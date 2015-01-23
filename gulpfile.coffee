gulp   = require 'gulp'
tsc    = require 'gulp-tsc'
uglify = require 'gulp-uglify'

gulp.task 'build', () ->
    gulp.src 'src/**/*.ts'
    .pipe tsc
        out: 'incremental-search.js'
    .pipe uglify()
    .pipe gulp.dest 'build'

gulp.task 'test-compile', () ->
    gulp.src 'test/src/**/*.ts'
    .pipe tsc
        out: '**/*.js'
    .pipe gulp.dest 'test/compiled'

gulp.task 'test', ['build','test-compile']
