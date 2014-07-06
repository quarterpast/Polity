# Polity [![Build Status](https://travis-ci.org/quarterto/Polity.svg)](https://travis-ci.org/quarterto/Polity)

Event-emitting stateful objects. Maps on event-flavoured steroids.

## Installation

```
npm install polity
```

## What's the deal

State objects are just ES6 `Map`s that emit events when values get changed.

## API
### `State([initAttributes])`
#### `#set(key, value)` or `#set(object)`
#### `#delete(key)`
#### `#clear`
#### `#get(key)`
#### `#has(key)`

## Licence

MIT. &copy; 2014 Matt Brennan
