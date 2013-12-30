define ['Pen', 'Grid', 'Pixel', 'DatabaseHelper'], (Pen, Grid, Pixel, DatabaseHelper) ->
	class @ViewPort
		@LINESCOLOR: '#aaa'

		constructor: (@Grid) ->
			#if no associated Grid
			if not @Grid?
				@Grid = new Grid()
				console.log ('inside grid')
			
			@canvas = document.createElement 'canvas'
			@canvas.id = DatabaseHelper.UUID
			@canvas.style.border = 'red 2px solid'

			@canvas.height = @Grid.cellSize * @Grid.numberOfRows
			@canvas.width = @Grid.cellSize * @Grid.numberOfColumns

			@context = @canvas.getContext '2d'
			
			canvasContainer = document.getElementById 'container'
			canvasContainer.appendChild @canvas

			@setEventListeners(@canvas)
			@drawCanvas()

		setEventListeners: (canvas) =>
			#set canvas listeners		
			canvas.addEventListener 'mousedown', (e) => 
				Pen.inUse = true
				@drawPixel @Grid.saveDrawnPixel Pen.draw(this, e)

			canvas.addEventListener 'mousemove', (e) => 
				return unless Pen.inUse
				@drawPixel @Grid.saveDrawnPixel Pen.draw(this, e)

			canvas.addEventListener 'mouseup', ->
				Pen.inUse = false			

		drawCanvas: =>
			@canvas.width = @canvas.width
			@context.scale(@Grid.scale, @Grid.scale)
			
			@drawHorizontalLines x for x in [0..@canvas.width] by @Grid.cellSize
			@drawVerticalLines y for y in [0..@canvas.height] by @Grid.cellSize

			@context.strokeStyle = @LINESCOLOR
			@context.stroke()

		drawPixel: =>
			for columns, x in @Grid.pixels
				for color, y in columns when color isnt null
					pixel = new Pixel(x, y, color)
					@context.fillStyle = pixel.color	
					@context.fillRect(pixel.x * @Grid.cellSize, pixel.y * @Grid.cellSize, Pen.brushSize, Pen.brushSize)

		drawHorizontalLines: (x) =>
			@context.moveTo(x, 0)
			@context.lineTo(x, @canvas.width)

		drawVerticalLines: (y) =>
			@context.moveTo(0, y)
			@context.lineTo(@canvas.height, y)
