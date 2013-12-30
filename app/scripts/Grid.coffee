define [], () ->
	class @Grid
		# variables
		
		# constructor
		constructor: ->
			@cellSize = 20	
			@numberOfRows = 25
			@numberOfColumns = 25
			@scale = 1

			@pixels = for x in [0...@numberOfRows]
						for y in [0...@numberOfColumns]
							null	

		saveDrawnPixel: (pixel) =>
			@pixels[pixel.x / @cellSize][pixel.y  / @cellSize] = pixel.color
		
		increaseScale: =>
			@scale += 0.5
			@redraw()

		decreaseScale: =>
			@scale -= 0.5
			@redraw()
