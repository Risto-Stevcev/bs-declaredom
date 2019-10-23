var path = require('path');

var dir_js = path.resolve(__dirname, 'lib/es6_global/example');
var dir_build = path.resolve(__dirname, 'dist');

module.exports = {
    entry: path.resolve(dir_js, 'TryJsx.bs.js'),
    output: {
        path: dir_build,
        filename: 'bundle.webpack.jsx.js'
    },
    devServer: {
        contentBase: dir_build,
    },
    module: {
      rules: [
        {
          sideEffects: false,
          test: /\.m?js$/,
          exclude: /(node_modules|bower_components)/,
          use: {
            loader: 'babel-loader',
            options: {
              presets: ['@babel/preset-env'],
              plugins: ['@babel/plugin-proposal-object-rest-spread']
            }
          }
        }
      ]
    },
    stats: {
        // Nice colored output
        colors: true
    },
    mode: 'production',
    // Create source maps for the bundle
    devtool: 'source-map',
};
