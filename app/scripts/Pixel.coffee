define [], () ->
	class Pixel
		constructor: (@x, @y, @color) ->

		save: (Grid) ->
			Grid.saveDrawnPixel(this)