
var Hexo = require('hexo');
var hexo = new Hexo(process.cwd(), {});

var gulp = require('gulp');
var watch = require('gulp-watch');
var sass = require('gulp-sass');
var livereload = require('gulp-livereload');
var sourcemaps = require('gulp-sourcemaps');

var THEME = '/themes/ollo/'

var paths = {
  theme: 'themes/ollo/',
  css: '/public/css/',
  sass: THEME + 'source/css/**/*.scss',
  js: THEME + 'source/js/*.js',
  posts: '/source/_posts/*.md'
};

gulp.task('watch', function() {
  livereload.listen();
  gulp.watch(paths.sass, ['generate']);
  gulp.watch(paths.js, ['generate']);
  gulp.watch(paths.posts, ['generate']);
});

gulp.task('sass', function () {
  gulp.src(paths.sass, {outputStyle: 'compressed', sourcemap: true})
    .pipe(sourcemaps.init())
    .pipe(sass())
    .pipe(sourcemaps.write())
    .pipe(gulp.dest(paths.css));

});

gulp.task('generate', function() {
  hexo.init().then(function() {
    return hexo.call('generate', {});
  }).catch(function(err) {
    console.log(err);
  });
})

