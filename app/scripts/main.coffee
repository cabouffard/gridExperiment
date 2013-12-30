requirejs.config
	baseUrl: 'scripts'
	shim:
		'ViewPort': ['Pen', 'Grid', 'Pixel', 'DatabaseHelper']
		'Pen': ['MouseHelper', 'Pixel']
###
define ['require'], (require) ->
	mongoose = require('mongoose')
	db = moongose.CreateConnection("localhost", "test")
###

require ['Grid','ViewPort', 'Database'], () ->
	new ViewPort(new Grid())