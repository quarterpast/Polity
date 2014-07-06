# Polity [![Build Status](https://travis-ci.org/quarterto/Polity.svg)](https://travis-ci.org/quarterto/Polity)

Event-emitting stateful objects. Maps on event-flavoured steroids.

## Installation

```
npm install polity
```

## What's the deal

State objects are just ES6 `Map`s that emit events when values get changed.

## Example
```javascript
var State = require('polity');
var obj = new State();
obj.on('change', function(prop, val) {
  console.log('changed', prop, val);
});
obj.set('foo', 'bar'); // logs "changed foo bar"
obj.set('baz', 'quux'); // logs "changed baz quux"
obj.on('delete:foo', function() {
  console.log('what the... where did foo go?');
});
obj.delete('foo'); // logs "what the... where did foo go?"
obj.delete('baz'); // don't log nuthin
```

## API
### `State([initAttributes])`
#### `#set(key, value)` or `#set(object)`
#### `#delete(key)`
#### `#clear`
#### `#get(key)`
#### `#has(key)`

## Licence

MIT. &copy; 2014 Matt Brennan
