require! {
	State: './index.js'
	'karma-sinon-expect'.expect
}

export 'State':
	'constructor':
		'should set attributes': ->
			m = new State foo:\bar
			expect m.get \foo .to.be \bar

		'should emit create event': ->
			State::_handlers = create: [handler = expect.sinon.stub!] # HAX
			m = new State
			expect handler .to.be.called!
			delete State::_handlers

	'set':
		'should set key-value pair': ->
			m = new State
			m.set \foo \bar
			expect m.get \foo .to.be \bar

		'should set object': ->
			m = new State
			m.set do
				foo: \bar
				baz: \quux
			expect m.get \foo .to.be \bar
			expect m.get \baz .to.be \quux

		'should emit change event with attribute and value': ->
			m = new State
			m.on \change handler = expect.sinon.stub!
			m.set \foo \bar
			expect handler .to.be.called-with \foo \bar

	'delete':
		'should emit delete event': ->
			m = new State
			m.on \delete handler = expect.sinon.stub!
			m.delete \foo
			expect handler .to.be.called-with \foo

	'clear':
		'should emit reset event': ->
			m = new State
			m.on \reset handler = expect.sinon.stub!
			m.clear!
			expect handler .to.be.called!

