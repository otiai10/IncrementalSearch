gulp = require 'gulp'
tsc  = require 'gulp-tsc'

gulp.task 'build', () ->
    gulp.src 'src/**/*.ts'
    .pipe tsc
        out: 'incremental-search.js'
    .pipe gulp.dest 'build'

gulp.task 'test-compile', () ->
    gulp.src 'test/src/**/*.ts'
    .pipe tsc
        out: '**/*.js'
    .pipe gulp.dest 'test/compiled'

gulp.task 'test', ['build','test-compile']
