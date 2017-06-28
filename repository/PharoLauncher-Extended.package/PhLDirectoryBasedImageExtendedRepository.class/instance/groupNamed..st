accessing
groupNamed: aString
	aString = self name
		ifTrue: [ ^ self ].
	
	^ self groups detect: [ :group | group name = aString ]