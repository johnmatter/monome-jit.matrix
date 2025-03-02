'use strict';

const { MonomeMatrixUI } = require('monome-matrix-ui');

// Set up inlets and outlets
inlets = 1;   // Inlet 0 for messages
outlets = 2;  // Outlet 0 for arc messages, Outlet 1 for parameter values

class ArcParameterMatrix extends MonomeMatrixUI {
  constructor() {
    super();
    this.deviceType = 'arc';
    this.numRings = 4;
    this.ledsPerRing = 64;

    // Initialize parameter storage
    // name -> Map of channel -> {values, spriteIndex, config}
    this.parameters = new Map(); 
    this.encoderAssignments = new Array(this.numRings).fill(null); // encoder -> {name, channel}

    // Create persistent LED buffers for each ring
    this.ledBuffers = Array.from({ length: this.numRings }, 
      () => new Array(this.ledsPerRing).fill(0)
    );

    // Sprite sheet configuration
    this.spriteSheet = null;  // Will hold the sprite sheet matrix
    this.spriteSheetName = null;  // Will hold the name of the sprite sheet matrix
    
    // Track rotation position for each encoder
    this.encoderRotations = new Array(this.numRings).fill(0);
    
    // Default configuration for parameters
    this.defaultConfig = {
      isContinuous: true,  // true = continuous, false = bounded
      minAngle: -120,      // minimum angle for bounded mode (degrees)
      maxAngle: 120,       // maximum angle for bounded mode (degrees)
      sensitivity: 1.0,    // ticks per delta unit
      tickAccumulator: 0   // accumulates partial ticks
    };

    // Create our matrix to store all parameter values
    this.maxParameters = 32; // Allow up to 32 parameters
    this.currentMatrix = new JitterMatrix(1, "float32", this.ledsPerRing, this.maxParameters);
    
    if (this.debug) {
      post("ArcParameterMatrix initialized\n");
    }
  }

  // Set the sprite sheet matrix
  setSpriteSheet(matrixName) {
    try {
      if (!this.spriteSheet) {
        this.spriteSheet = new JitterMatrix(1, "float32", this.ledsPerRing, 32);
      }
      // Store the matrix name for later reloading
      this.spriteSheetName = matrixName;
      this.spriteSheet.frommatrix(matrixName);
      
      if (this.debug) {
        post(`Sprite sheet set from matrix: ${matrixName}\n`);
      }
      
      // Redraw all encoders with new sprites
      this.redraw();
    } catch (error) {
      post(`Error setting sprite sheet: ${error.message}\n`);
    }
  }

  // Reload sprites from the current sprite sheet
  reloadSprites() {
    try {
      if (!this.spriteSheet || !this.spriteSheetName) {
        if (this.debug) {
          post("No sprite sheet loaded to reload\n");
        }
        return;
      }
      
      // Force a refresh of the sprite sheet data using stored name
      this.spriteSheet.frommatrix(this.spriteSheetName);
      
      if (this.debug) {
        post(`Reloaded sprites from matrix: ${this.spriteSheetName}\n`);
      }
      
      // Redraw all encoders with refreshed sprites
      this.redraw();
    } catch (error) {
      post(`Error reloading sprites: ${error.message}\n`);
    }
  }

  // Set sprite for a parameter
  setParameterSprite(channel, paramName, spriteIndex) {
    if (!this.parameters.has(paramName)) {
      post(`Unknown parameter: ${paramName}\n`);
      return;
    }

    const paramChannels = this.parameters.get(paramName);
    if (!paramChannels.has(channel)) {
      post(`Unknown channel ${channel} for parameter: ${paramName}\n`);
      return;
    }

    if (!this.spriteSheet) {
      post("No sprite sheet loaded\n");
      return;
    }

    const numSprites = this.spriteSheet.dim[1];  // Assuming sprites are rows
    if (spriteIndex < 0 || spriteIndex >= numSprites) {
      post(`Invalid sprite index: ${spriteIndex}. Must be between 0 and ${numSprites - 1}\n`);
      return;
    }

    const param = paramChannels.get(channel);
    param.spriteIndex = spriteIndex;
    
    // Redraw any encoders using this parameter
    const affectedEncoders = this.encoderAssignments
      .map((assignment, index) => assignment && 
           assignment.name === paramName && 
           assignment.channel === channel ? index : null)
      .filter(index => index !== null);
    
    if (affectedEncoders.length > 0) {
      this.redraw(affectedEncoders);
    }
  }

  // Configure a parameter's behavior
  setParameterConfig(channel, paramName, config) {
    if (!this.parameters.has(paramName)) {
      post(`Unknown parameter: ${paramName}\n`);
      return;
    }

    const paramChannels = this.parameters.get(paramName);
    if (!paramChannels.has(channel)) {
      post(`Unknown channel ${channel} for parameter: ${paramName}\n`);
      return;
    }

    const param = paramChannels.get(channel);
    Object.assign(param.config, config);

    // Identify encoders using this parameter
    const affectedEncoders = this.encoderAssignments
      .map((assignment, index) => assignment && 
           assignment.name === paramName && 
           assignment.channel === channel ? index : null)
      .filter(index => index !== null);
    
    // Clamp rotation if bounded for affected encoders
    if (!param.config.isContinuous) {
      for (const encoderNum of affectedEncoders) {
        const minTicks = Math.floor(param.config.minAngle * this.ledsPerRing / 360);
        const maxTicks = Math.floor(param.config.maxAngle * this.ledsPerRing / 360);
        this.encoderRotations[encoderNum] = Math.max(minTicks, Math.min(maxTicks, this.encoderRotations[encoderNum]));
      }
    }

    if (affectedEncoders.length > 0) {
      this.redraw(affectedEncoders);
    }
  }

  // Handle encoder delta messages with sprite rotation
  handleDelta(encoderNum, delta) {
    const assignment = this.encoderAssignments[encoderNum];
    if (!assignment) return;
    
    const { name: paramName, channel } = assignment;
    const paramChannels = this.parameters.get(paramName);
    if (!paramChannels || !paramChannels.has(channel)) return;
    
    const param = paramChannels.get(channel);
    const config = param.config;
    
    // Accumulate delta and convert to ticks
    // Positive delta = clockwise = increasing value
    config.tickAccumulator += delta * config.sensitivity;
    const ticks = Math.floor(config.tickAccumulator);
    config.tickAccumulator -= ticks;

    if (ticks === 0) return;

    // Update rotation of this encoder
    if (config.isContinuous) {
      this.encoderRotations[encoderNum] = (this.encoderRotations[encoderNum] + ticks) % this.ledsPerRing;
      if (this.encoderRotations[encoderNum] < 0) {
        this.encoderRotations[encoderNum] += this.ledsPerRing;
      }
    } else {
      const minTicks = Math.floor(config.minAngle * this.ledsPerRing / 360);
      const maxTicks = Math.floor(config.maxAngle * this.ledsPerRing / 360);
      // Clamp the rotation to bounds
      const newRotation = Math.max(minTicks, Math.min(maxTicks, 
        this.encoderRotations[encoderNum] + ticks));
      
      // Only update and redraw if the rotation actually changed
      if (newRotation !== this.encoderRotations[encoderNum]) {
        this.encoderRotations[encoderNum] = newRotation;
      } else {
        // If we hit the bounds, don't continue processing
        return;
      }
    }

    // Update parameter value
    if (config.isContinuous) {
      let normalizedValue = (this.encoderRotations[encoderNum] % this.ledsPerRing) / this.ledsPerRing;
      // Check for NaN and fix if needed
      if (isNaN(normalizedValue)) {
        if (this.debug) {
          post(`Warning: NaN detected in normalizedValue (continuous mode), defaulting to 0\n`);
        }
        normalizedValue = 0;
      }
      param.values.fill(normalizedValue);
    } else {
      const minTicks = Math.floor(config.minAngle * this.ledsPerRing / 360);
      const maxTicks = Math.floor(config.maxAngle * this.ledsPerRing / 360);
      
      // Prevent division by zero
      const range = maxTicks - minTicks;
      let normalizedValue = 0;
      
      if (range <= 0) {
        if (this.debug) {
          post(`Warning: Invalid range for bounded encoder (${minTicks} to ${maxTicks}), defaulting to 0\n`);
        }
      } else {
        normalizedValue = Math.max(0, Math.min(1, 
          (this.encoderRotations[encoderNum] - minTicks) / range
        ));
        
        // Check for NaN
        if (isNaN(normalizedValue)) {
          if (this.debug) {
            post(`Warning: NaN detected in normalizedValue (bounded mode), defaulting to 0\n`);
          }
          normalizedValue = 0;
        }
      }
      
      param.values.fill(normalizedValue);
    }
    
    this.updateMatrixRow(channel, paramName);
    
    // Find all encoders assigned to this parameter/channel
    const affectedEncoders = this.encoderAssignments
      .map((assignment, index) => 
        assignment && 
        assignment.name === paramName && 
        assignment.channel === channel &&
        index !== encoderNum ? index : null)  // Exclude the encoder that was turned
      .filter(index => index !== null);
    
    // Update rotation value for all other affected encoders
    if (affectedEncoders.length > 0) {
      const currentValue = param.values[0]; // All values should be the same
      
      for (const otherEncoderNum of affectedEncoders) {
        if (config.isContinuous) {
          this.encoderRotations[otherEncoderNum] = Math.floor(currentValue * this.ledsPerRing) % this.ledsPerRing;
        } else {
          const minTicks = Math.floor(config.minAngle * this.ledsPerRing / 360);
          const maxTicks = Math.floor(config.maxAngle * this.ledsPerRing / 360);
          const rangeTicks = maxTicks - minTicks;
          this.encoderRotations[otherEncoderNum] = minTicks + Math.floor(currentValue * rangeTicks);
        }
      }
      
      // Redraw all affected encoders plus the original one
      this.redraw([encoderNum, ...affectedEncoders]);
    } else {
      // Just redraw the encoder that was turned
      this.redraw([encoderNum]);
    }
  }

  // Redraw with sprite support
  redraw(rings = null) {
    try {
      if (!this.spriteSheet) return;

      // If no rings specified, update all rings
      const ringsToUpdate = rings || Array.from({ length: this.numRings }, (_, i) => i);

      // First update the LED displays
      for (const ringIndex of ringsToUpdate) {
        const buffer = this.ledBuffers[ringIndex];
        const assignment = this.encoderAssignments[ringIndex];
        
        if (!assignment) {
          // Clear the ring if no parameter assigned
          buffer.fill(0);
          outlet(0, "/monome/ring/map", ringIndex, ...buffer);
          continue;
        }
        
        const { name: paramName, channel } = assignment;
        const paramChannels = this.parameters.get(paramName);
        if (!paramChannels || !paramChannels.has(channel)) {
          buffer.fill(0);
          outlet(0, "/monome/ring/map", ringIndex, ...buffer);
          continue;
        }
        
        const param = paramChannels.get(channel);
        const spriteIndex = param.spriteIndex || 0; // Default to 0 if undefined
        const rotation = this.encoderRotations[ringIndex] || 0; // Default to 0 if undefined

        // Copy sprite data with rotation
        for (let led = 0; led < this.ledsPerRing; led++) {
          // Negate rotation to make LEDs rotate in the same direction as encoder
          const srcLed = (led - rotation + this.ledsPerRing) % this.ledsPerRing;
          // Add safety check for sprite sheet access
          let value = 0;
          try {
            const cell = this.spriteSheet.getcell(srcLed, spriteIndex);
            if (cell && cell[0] !== undefined && !isNaN(cell[0])) {
              value = cell[0];
            } else if (this.debug && (cell && isNaN(cell[0]))) {
              post(`Warning: NaN value in sprite sheet at (${srcLed}, ${spriteIndex})\n`);
            }
          } catch (error) {
            if (this.debug) {
              post(`Error getting sprite cell: ${error.message}\n`);
            }
          }
          // Scale to 0-15 brightness and ensure it's within valid range
          const scaledValue = Math.max(0, Math.min(15, Math.floor(value * 15)));
          
          // Final NaN check
          buffer[led] = isNaN(scaledValue) ? 0 : scaledValue;
        }

        // Verify no NaN values in buffer before sending
        const hasNaN = buffer.some(val => isNaN(val));
        if (hasNaN) {
          if (this.debug) {
            post(`Warning: NaN values detected in LED buffer for ring ${ringIndex}, setting to zeros\n`);
          }
          buffer.fill(0);
        }

        // Send OSC message to update this ring
        outlet(0, "/monome/ring/map", ringIndex, ...buffer);

        if (this.debug) {
          post(`Ring ${ringIndex} update: sprite=${spriteIndex}, rotation=${rotation}\n`);
        }
      }

      // Then output all parameter states
      outlet(1, "clear");
      for (let i = 0; i < this.numRings; i++) {
        const assignment = this.encoderAssignments[i];
        if (assignment) {
          const { name: paramName, channel } = assignment;
          const paramChannels = this.parameters.get(paramName);
          if (paramChannels && paramChannels.has(channel)) {
            const param = paramChannels.get(channel);
            
            // Safely calculate average value
            let avgValue = 0;
            if (param.values && param.values.length > 0) {
              const sum = param.values.reduce((a, b) => {
                // Handle NaN values in the reduction
                if (isNaN(a)) a = 0;
                if (isNaN(b)) b = 0;
                return a + b;
              }, 0);
              avgValue = sum / Math.max(1, param.values.length); // Avoid division by zero
              
              // Final NaN check
              if (isNaN(avgValue)) {
                if (this.debug) {
                  post(`Warning: NaN detected in average value for parameter ${paramName}, channel ${channel}\n`);
                }
                avgValue = 0;
              }
            }
            
            outlet(1, i, channel, paramName, avgValue);
          }
        }
      }
    } catch (error) {
      post(`Error in redraw: ${error.message}\n`);
    }
  }

  // Handle incoming messages
  handleMessage(command, args) {
    // First try parent class message handling
    if (super.handleMessage(command, args)) {
      return true;
    }

    switch (command) {
      case "setspritesheet":
        if (args.length >= 2) {
          this.setSpriteSheet(args[1]);
          return true;
        }
        break;

      case "reloadsprites":
        this.reloadSprites();
        return true;

      case "setparametersprite":
        if (args.length >= 4) {
          this.setParameterSprite(args[1], args[2], args[3]);
          return true;
        }
        break;

      case "setparameterconfig":
        if (args.length >= 4) {
          const channel = args[1];
          const paramName = args[2];
          const config = {};
          if (args[3] === "continuous") {
            config.isContinuous = true;
          } else if (args[3] === "bounded") {
            config.isContinuous = false;
            if (args.length >= 6) {
              config.minAngle = args[4];
              config.maxAngle = args[5];
            }
          }
          if (args.length >= 7) {
            post(`Setting sensitivity for ${paramName} on channel ${channel} to ${args[6]}\n`);
            config.sensitivity = args[6];
          }
          this.setParameterConfig(channel, paramName, config);
          return true;
        }
        break;

      case "setencoder":
        if (args.length >= 4) {
          this.setEncoder(args[1], args[2], args[3]);
          return true;
        }
        break;

      case "setparameter":
        if (args.length >= 3) {
          this.setParameter(args[1], args[2]);
          return true;
        }
        break;

      case "/monome/enc/delta":
        if (args.length >= 3) {
          this.handleDelta(args[1], args[2]);
          return true;
        }
        break;

      case "/monome/enc/key":
        // Currently just ignoring key messages
        return true;

      case "redraw":
        if (args.length > 1) {
          this.redraw(args.slice(1));
        } else {
          this.redraw();
        }
        return true;

      default:
        return false;
    }
    return false;
  }

  // Add or update a parameter
  setParameter(channel, name) {
    if (!this.parameters.has(name)) {
      // Initialize new parameter map
      this.parameters.set(name, new Map());
    }

    const paramChannels = this.parameters.get(name);
    if (!paramChannels.has(channel)) {
      // Initialize parameter data for this channel with default config
      const values = new Array(this.ledsPerRing).fill(0);
      const spriteIndex = 0; // Default sprite
      const config = {...this.defaultConfig}; // Clone default config
      paramChannels.set(channel, { values, spriteIndex, config });
    }
  }

  // Update matrix row for a parameter instance
  updateMatrixRow(channel, paramName) {
    const paramChannels = this.parameters.get(paramName);
    if (!paramChannels || !paramChannels.has(channel)) return;

    const param = paramChannels.get(channel);
    
    // Find parameter index in matrix - now using both name and channel
    const paramIndex = Array.from(this.parameters.entries()).findIndex(([name, channels]) => 
      name === paramName && channels.has(channel)
    );

    if (paramIndex >= 0 && paramIndex < this.maxParameters) {
      // Update matrix row with parameter values
      for (let i = 0; i < this.ledsPerRing; i++) {
        this.currentMatrix.setcell(i, paramIndex, [param.values[i]]);
      }
    }
  }

  // Assign parameter to encoder
  setEncoder(encoderNum, channel, paramName) {
    if (encoderNum < 0 || encoderNum >= this.numRings) {
      post(`Invalid encoder number: ${encoderNum}\n`);
      return;
    }

    if (!this.parameters.has(paramName)) {
      post(`Unknown parameter: ${paramName}\n`);
      return;
    }

    const paramChannels = this.parameters.get(paramName);
    if (!paramChannels.has(channel)) {
      post(`Unknown channel ${channel} for parameter: ${paramName}\n`);
      return;
    }

    // Get the current parameter value
    const newParam = paramChannels.get(channel);
    const newConfig = newParam.config;
    const currentValue = newParam.values[0]; // Assuming uniform values
    
    // Calculate rotation based on the parameter's current value
    let newRotation = 0;
    if (newConfig.isContinuous) {
      newRotation = Math.floor(currentValue * this.ledsPerRing) % this.ledsPerRing;
    } else {
      const minTicks = Math.floor(newConfig.minAngle * this.ledsPerRing / 360);
      const maxTicks = Math.floor(newConfig.maxAngle * this.ledsPerRing / 360);
      const rangeTicks = maxTicks - minTicks;
      newRotation = minTicks + Math.floor(currentValue * rangeTicks);
    }
    
    // Update the encoder rotation to match the parameter value
    this.encoderRotations[encoderNum] = newRotation;
    
    // Update the encoder assignment
    this.encoderAssignments[encoderNum] = { name: paramName, channel };
    
    // Update any other encoders assigned to the same parameter
    const affectedEncoders = this.encoderAssignments
      .map((assignment, index) => 
        assignment && 
        assignment.name === paramName && 
        assignment.channel === channel &&
        index !== encoderNum ? index : null)
      .filter(index => index !== null);
      
    for (const otherEncoderNum of affectedEncoders) {
      this.encoderRotations[otherEncoderNum] = newRotation;
    }
    
    // Redraw this encoder and any others affected
    if (affectedEncoders.length > 0) {
      this.redraw([encoderNum, ...affectedEncoders]);
    } else {
      this.redraw([encoderNum]);
    }
  }
}

const ui = new ArcParameterMatrix();

// Export functions to Max environment
function anything() {
  const args = [messagename].concat(Array.prototype.slice.call(arguments));
  ui.handleMessage(messagename, args);
}

function bang() {
  if (ui) {
    if (ui.debug) {
      post("redraw\n");
    }
    ui.redraw();
  } else {
    post("ui object not defined\n");
  }
}

// Export functions to Max environment
this.anything = anything;
this.bang = bang; 