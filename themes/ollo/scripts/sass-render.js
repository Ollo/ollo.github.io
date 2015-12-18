'use strict';

var sass = require('node-sass');
var path = require('path');

hexo.extend.renderer.register('scss', 'css', function(data, options) {

  var result = sass.renderSync({
    data: data.text,
    includePaths: [path.join(__dirname, '../source/css')],
    outputStyle: 'compressed',
    sourceMap: true
  });

  return result.css.toString();

}, true);
