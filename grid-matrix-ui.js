'use strict';

// Import the base class
const { MonomeMatrixUI } = require('monome-matrix-ui');

// Set up inlets and outlets
inlets = 1;  // Inlet 0 for messages and matrix name
outlets = 1; // Outlet 0 for grid

class GridMatrixUI extends MonomeMatrixUI {
  constructor() {
    super();
    this.deviceType = 'grid';
    this.gridType = 128; // Default to grid 128/one 
    this.gridWidth = 16;
    this.gridHeight = 8;
    this.gridState = this.createEmptyGrid();

    // Create a JitterMatrix object to store a local copy of our reference
    this.currentMatrix = new JitterMatrix(1, "float32", this.gridWidth, this.gridHeight);
  }

  setGridType(type) {
    // TODO: add handling for 64
    if (type !== 128 && type !== 256) {
      post(`Invalid grid type: ${type}. Must be 128 or 256.\n`);
      return;
    }
    
    this.gridType = type;
    this.gridHeight = type === 256 ? 16 : 8;
    this.gridWidth = 16;
    this.gridState = this.createEmptyGrid();
    this.currentMatrix = new JitterMatrix(1, "float32", this.gridWidth, this.gridHeight);
    
    if (this.debug) {
      post(`Grid type set to ${type}\n`);
    }
  }

  // Initialize empty grid state
  createEmptyGrid() {
    return Array.from({ length: this.gridHeight }, () => Array(this.gridWidth).fill(0));
  }

  // Update grid state from matrix
  updateGridState() {
    try {
      if (!this.matrixName) {
        return;
      }

      // Update our reference matrix
      this.currentMatrix.frommatrix(this.matrixName);
      
      // Map matrix values to grid brightness
      for (let y = 0; y < this.gridHeight; y++) {
        for (let x = 0; x < this.gridWidth; x++) {
          // Get float value (0.0-1.0)
          const val = this.currentMatrix.getcell(x, y)[0];
          
          // Map 0.0-1.0 to 0-15 brightness levels
          this.gridState[y][x] = Math.floor(val * 15);
        }
      }

    } catch (error) {
      post(`Error updating grid state: ${error.message}\n`);
    }
  }

  // Redraw the entire grid
  redraw() {
    this.updateGridState();
    
    // TODO: add handling for 64
    if (this.gridType === 128) {
      // Grid 128 (8x16) - Original behavior with two 8x8 sections
      const leftBuffer = new Array(64).fill(0);
      const rightBuffer = new Array(64).fill(0);

      // Convert our 2D grid state into the 1D buffer format
      // The buffer needs to be filled in column-major order (x changes fastest)
      for (let y = 0; y < 8; y++) {
        for (let x = 0; x < 8; x++) {
          // Left half (0-7)
          leftBuffer[x + (y * 8)] = this.gridState[y][x];
          // Right half (8-15)
          rightBuffer[x + (y * 8)] = this.gridState[y][x + 8];
        }
      }

      if (this.debug) {
        post("Sending grid update (128):\n");
        post(`Left half: ${leftBuffer.join(" ")}\n`);
        post(`Right half: ${rightBuffer.join(" ")}\n`);
      }

      // Send messages to grid over OSC
      outlet(0, "/monome/grid/led/level/map", 0, 0, ...leftBuffer);
      outlet(0, "/monome/grid/led/level/map", 8, 0, ...rightBuffer);
      
    } else {
      // Grid 256 (16x16) - Four 8x8 sections
      const topLeftBuffer = new Array(64).fill(0);
      const topRightBuffer = new Array(64).fill(0);
      const bottomLeftBuffer = new Array(64).fill(0);
      const bottomRightBuffer = new Array(64).fill(0);

      // Fill buffers for all four quadrants
      for (let y = 0; y < 8; y++) {
        for (let x = 0; x < 8; x++) {
          // Top left quadrant
          topLeftBuffer[x + (y * 8)] = this.gridState[y][x];
          // Top right quadrant
          topRightBuffer[x + (y * 8)] = this.gridState[y][x + 8];
          // Bottom left quadrant
          bottomLeftBuffer[x + (y * 8)] = this.gridState[y + 8][x];
          // Bottom right quadrant
          bottomRightBuffer[x + (y * 8)] = this.gridState[y + 8][x + 8];
        }
      }

      if (this.debug) {
        post("Sending grid update (256):\n");
        post(`Top left: ${topLeftBuffer.join(" ")}\n`);
        post(`Top right: ${topRightBuffer.join(" ")}\n`);
        post(`Bottom left: ${bottomLeftBuffer.join(" ")}\n`);
        post(`Bottom right: ${bottomRightBuffer.join(" ")}\n`);
      }

      // Send messages to grid over OSC for each quadrant
      outlet(0, "/monome/grid/led/level/map", 0, 0, ...topLeftBuffer);
      outlet(0, "/monome/grid/led/level/map", 8, 0, ...topRightBuffer);
      outlet(0, "/monome/grid/led/level/map", 0, 8, ...bottomLeftBuffer);
      outlet(0, "/monome/grid/led/level/map", 8, 8, ...bottomRightBuffer);
    }
  }

  // Override handleMessage to add grid-specific commands
  handleMessage(command, args) {
    // First try parent class handling
    if (super.handleMessage(command, args)) {
      return true;
    }

    // Handle grid-specific commands
    switch (command) {
      case "type":
        if (args.length > 1) {
          this.setGridType(parseInt(args[1]));
        }
        return true;

      default:
        return false;
    }
  }
}

const ui = new GridMatrixUI();

// Export functions to Max environment
function anything() {
  // Convert arguments to array and include messagename as first element
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
