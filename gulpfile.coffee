gulp = require 'gulp'
coffee = require 'gulp-coffee'
sourcemap = require 'gulp-sourcemaps'

gulp.task 'coffee', ->
	gulp.src 'src/**/*.coffee'
		.pipe sourcemap.init()
		.pipe coffee()
		.pipe sourcemap.write()
		.pipe gulp.dest 'build/'
gulp.task 'default', ['coffee']
