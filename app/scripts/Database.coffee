define [], (require) ->
	class @Database
		@init: ->
			@test = require('moongose')
			@belp = mongoose.connect('mongodb://localhost/test')
			@db = blep.connection
			@db.on 'error', () ->
				console.log 'connection error:'
			@db.once 'open', () ->
				console.log 'yay' 


