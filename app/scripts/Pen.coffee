define ['MouseHelper', 'Pixel'], (MH, Pixel) ->
	class Pen
		@brushSize = 20
		@color = '#00FF00'
		@inUse = false
		
		@draw: (ViewPort, e) ->
			mousePos = MH.getMousePosition(ViewPort, e)
			pixel = new Pixel(mousePos.x, mousePos.y, @color)