require! {
	Map: \es6-map
	eventide
}

module.exports = class State extends Map implements eventide
	(attrs)~>
		super!
		@set attrs if attrs
		@emit \create

	set: (attr, value)->
		if typeof! attr is \Object
			for key, value of attr
				@set key, value
		else
			@emit "change:#attr" value
			super ...

	delete: (attr)->
		@emit "delete:#attr"
		super ...

	clear: ->
		@emit \reset
		super ...
