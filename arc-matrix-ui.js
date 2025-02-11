'use strict';

// Import the base class
const { MonomeMatrixUI } = require('monome-matrix-ui');

// Set up inlets and outlets
inlets = 1;  // Inlet 0 for messages and matrix name
outlets = 1; // Outlet 0 for arc

// Create UI class for Arc Matrix
class ArcMatrixUI extends MonomeMatrixUI {
  constructor() {
    super();
    this.deviceType = 'arc';
    this.numRings = 4;
    this.ledsPerRing = 64;

    // Initialize matrix for Arc (64 columns x 4 rows)
    this.currentMatrix = new JitterMatrix(1, "float32", this.ledsPerRing, this.numRings);
    
    if (this.debug) {
      post("MatrixArc initialized\n");
    }
  }

  // Update and send LED values for a single ring
  updateRing(ringIndex) {
    if (!this.matrixName) {
      return;
    }

    try {
      // Create buffer for this ring's LED values
      const buffer = new Array(this.ledsPerRing);
      
      // Get values from matrix for this ring
      for (let led = 0; led < this.ledsPerRing; led++) {
        // Get float value (0.0-1.0) from matrix
        const val = this.currentMatrix.getcell(led, ringIndex)[0];
        
        // Map 0.0-1.0 to 0-15 brightness levels
        buffer[led] = Math.floor(val * 15);
      }

      if (this.debug) {
        post(`Ring ${ringIndex} update: ${buffer.join(" ")}\n`);
      }

      // Send OSC message to update this ring
      outlet(0, "/monome/ring/map", ringIndex, ...buffer);

    } catch (error) {
      post(`Error updating ring ${ringIndex}: ${error.message}\n`);
    }
  }

  // Redraw all rings - implementing abstract method
  redraw() {
    try {
      if (!this.matrixName) {
        return;
      }

      // Update our reference matrix
      this.currentMatrix.frommatrix(this.matrixName);
      
      // Update each ring
      for (let ring = 0; ring < this.numRings; ring++) {
        this.updateRing(ring);
      }

    } catch (error) {
      post(`Error redrawing arc: ${error.message}\n`);
    }
  }
}

const ui = new ArcMatrixUI();

// Export functions to Max environment
function anything() {
  // Convert arguments to array and include messagename as first element
  const args = [messagename].concat(Array.prototype.slice.call(arguments));
  ui.handleMessage(messagename, args);
}

function bang() {
  // Check if the ui object is defined
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