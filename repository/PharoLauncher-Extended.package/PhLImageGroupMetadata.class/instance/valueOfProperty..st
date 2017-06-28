private
valueOfProperty: aKey
	^ self valueOfProperty: aKey ifAbsent: [ ^ nil ]