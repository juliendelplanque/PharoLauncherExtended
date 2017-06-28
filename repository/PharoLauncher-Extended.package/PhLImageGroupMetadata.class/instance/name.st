accessing-properties
name
	^ self valueOfProperty: 'name' ifAbsent: [ PhLError signal: ('Error, unnamed group {1}. Did you edit the metadata by hand?' format: { self directory }) ]