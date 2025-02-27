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
    // Map of parameter name -> Map of channel -> {values}
    this.parameters = new Map(); 
    this.encoderAssignments = new Array(this.numRings).fill(null); // encoder -> {name, channel}

    // Create persistent LED buffers for each ring
    this.ledBuffers = Array.from({ length: this.numRings }, 
      () => new Array(this.ledsPerRing).fill(0)
    );

    // Create our matrix to store all parameter values
    this.maxParameters = 32; // Allow up to 32 parameters
    this.currentMatrix = new JitterMatrix(1, "float32", this.ledsPerRing, this.maxParameters);
    
    if (this.debug) {
      post("ArcParameterMatrix initialized\n");
    }
  }

  // Add or update a parameter
  setParameter(channel, name) {
    if (!this.parameters.has(name)) {
      // Initialize new parameter map
      this.parameters.set(name, new Map());
    }

    const paramChannels = this.parameters.get(name);
    if (!paramChannels.has(channel)) {
      // Initialize parameter values for this channel
      const values = new Array(this.ledsPerRing).fill(0);
      paramChannels.set(channel, { values });
    }
  }

  // Update matrix row for a parameter instance
  updateMatrixRow(paramName, channel) {
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

  // Send all necessary messages for the current state
  redraw(rings = null) {
    try {
      // If no rings specified, update all rings
      const ringsToUpdate = rings || Array.from({ length: this.numRings }, (_, i) => i);

      // First update the LED displays
      for (const ringIndex of ringsToUpdate) {
        const assignment = this.encoderAssignments[ringIndex];
        if (!assignment) continue;

        const { name: paramName, channel } = assignment;
        const paramChannels = this.parameters.get(paramName);
        if (!paramChannels || !paramChannels.has(channel)) continue;

        const param = paramChannels.get(channel);
        const buffer = this.ledBuffers[ringIndex];

        // Map parameter values to LED brightness
        for (let led = 0; led < this.ledsPerRing; led++) {
          buffer[led] = Math.floor(param.values[led] * 15);
        }

        // Send OSC message to update this ring
        outlet(0, "/monome/ring/map", ringIndex, ...buffer);

        if (this.debug) {
          post(`Ring ${ringIndex} update: ${buffer.join(" ")}\n`);
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
            const avgValue = param.values.reduce((a, b) => a + b, 0) / this.ledsPerRing;
            outlet(1, i, paramName, channel, avgValue);
          }
        }
      }
    } catch (error) {
      post(`Error sending messages: ${error.message}\n`);
    }
  }

  // Handle encoder delta messages
  handleDelta(encoderNum, delta) {
    const assignment = this.encoderAssignments[encoderNum];
    if (!assignment) return;

    const { name: paramName, channel } = assignment;
    const paramChannels = this.parameters.get(paramName);
    if (!paramChannels || !paramChannels.has(channel)) return;

    const param = paramChannels.get(channel);

    // Update parameter values based on delta
    const scaledDelta = delta * 0.01; // Scale delta to small changes
    for (let i = 0; i < this.ledsPerRing; i++) {
      param.values[i] = Math.max(0, Math.min(1, param.values[i] + scaledDelta));
    }

    // Update matrix
    this.updateMatrixRow(paramName, channel);
    this.redraw();

    if (this.debug) {
      post(`Parameter ${paramName} (channel ${channel}) updated\n`);
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

    this.encoderAssignments[encoderNum] = { name: paramName, channel };
    
    // Send all necessary messages
    this.redraw([encoderNum]);
  }

  // Handle incoming messages
  handleMessage(command, args) {
    // First try parent class message handling
    if (super.handleMessage(command, args)) {
      return true;
    }

    switch (command) {
      case "setparameter":
        if (args.length >= 3) {
          this.setParameter(args[1], args[2]);
          return true;
        }
        break;

      case "setencoder":
        if (args.length >= 4) {
          this.setEncoder(args[1], args[2], args[3]);
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
          // If arguments provided, treat them as ring numbers to redraw
          this.redraw(args.slice(1));
        } else {
          // No arguments, redraw all
          this.redraw();
        }
        return true;

      default:
        return false;
    }
    return false;
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