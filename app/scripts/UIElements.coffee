class UIElements
	@initFields: (selectedGrid) ->
		@selectedGrid = selectedGrid
		@btnPlus = document.getElementById 'plus'
		@btnPlus.addEventListener 'click', ->
			selectedGrid.increaseScale()
		@btnMinus = document.getElementById 'minus'
		@btnMinus.addEventListener 'click', ->
			selectedGrid.decreaseScale()