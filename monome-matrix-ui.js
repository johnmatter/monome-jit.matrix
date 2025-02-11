'use strict';

// Child classes should look like:
// const { MonomeMatrixUI } = require('monome-matrix-ui');
// class ChildClass extends MonomeMatrixUI {
//   constructor() {
//     super();
//     ... // device-specific initialization
//   }
//
//   ... // device-specific methods
//
//   redraw() {
//     ... // device-specific redraw() method
//   }
//
//   handleMessage(command, args) {
//     // first try to handle the message with the parent class
//     if (super.handleMessage(command, args)) {
//       return true;
//     }
//     // device-specific message handling
//     switch (command) {
//       case "foo":
//       default:
//         return false;
//     }
//   }
// }

class MonomeMatrixUI {
  constructor() {
    this.debug = false;
    this.matrixName = null;
    this.prefix = "/monome";
    this.currentMatrix = null;

    // These should be set by child classes
    // TODO: does JS have enums?
    this.deviceType = null; // 'arc' or 'grid'; 

    if (this.debug) {
      post(`Matrix${this.deviceType} initialized\n`);
    }
  }

  // Set prefix for OSC messages
  // Default is "/monome"
  setPrefix(prefix) {
    this.prefix = prefix;
  }

  // Set which matrix to display
  setMatrix(name) {
    try {
      if (this.debug) {
        post(`Attempting to reference matrix: ${name}\n`);
      }

      // Set the matrix name
      this.matrixName = name;
      
      // Try to get the named matrix
      this.currentMatrix.frommatrix(this.matrixName);
      
      // Redraw the matrix
      this.redraw();
      
    } catch (error) {
      post(`Error setting matrix: ${error.message}\n`);
    }
  }

  // Abstract method - should be implemented by child classes
  redraw() {
    throw new Error('redraw() must be implemented by child class');
  }

  // Child classes should override this method
  handleMessage(command, args) {
    if (this.debug) {
      post(`Received command: ${command} with args: ${args.slice(1).join(" ")}\n`);
    }

    switch (command) {
      case "set":
        if (args.length > 1) {
          this.setMatrix(args[1]);
        }
        break;

      case "debug":
        this.debug = args[1] === 1;
        break;

      default:
        return false; // Not handled
    }
    return true; // Handled
  }
}

exports.MonomeMatrixUI = MonomeMatrixUI; 