const resolve = require('rollup-plugin-node-resolve')
const builtins = require('rollup-plugin-node-builtins');
const globals = require('rollup-plugin-node-globals');

module.exports = {
  input: 'lib/es6_global/example/ExampleSimple.bs.js',
  output: {
    format: 'umd',
    sourcemap: true,
    file: 'dist/bundle.rollup.simple.js',
    name: 'simple'
  },
  plugins: [
    globals(),
    builtins(),
    resolve()
  ]
};
