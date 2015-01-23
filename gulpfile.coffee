gulp = require 'gulp'
tsc  = require 'gulp-tsc'

gulp.task 'build', () ->
    gulp.src 'src/**/*.ts'
    .pipe tsc
        out: 'incremental-search.js'
    .pipe gulp.dest 'build'
