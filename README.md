# monome-jit.matrix
A [Max/MSP JavaScript](https://docs.cycling74.com/userguide/javascript/) library for drawing jitter matrices on monome grid and arc.

The classes convert a 1-channel Jitter matrix's normalized (0.0-1.0) float values to a sequence of [OSC messages](https://monome.org/docs/serialosc/osc/) that will render the matrix on the monome device.

## Usage
1. Create a cool and interesting [`jit.matrix`](https://cycling74.com/tutorials/jitter-recipes-book-1)
2. Load `grid-matrix-ui.js` or `arc-matrix-ui.js` in a `v8` object
3. Connect the `v8`'s outlet to a [`monome-device`](https://monome.org/docs/grid/studies/max/)
4. Send a `set [matrix-name]` message to the v8 object to set the matrix you want to display
5. Send `bang`s to the v8 object to redraw the matrix on the monome device

## TODO
- Literally any error handling
