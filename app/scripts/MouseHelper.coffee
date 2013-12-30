define [], () ->
	class MouseHelper
		@getMousePosition: (ViewPort, e) ->
			rect = ViewPort.canvas.getBoundingClientRect()
			return {
		    	x : (Math.floor((e.clientX - rect.left) / (ViewPort.Grid.cellSize * ViewPort.Grid.scale)) * ViewPort.Grid.cellSize)
		    	y : (Math.floor((e.clientY - rect.top) / (ViewPort.Grid.cellSize * ViewPort.Grid.scale)) * ViewPort.Grid.cellSize)
		    }