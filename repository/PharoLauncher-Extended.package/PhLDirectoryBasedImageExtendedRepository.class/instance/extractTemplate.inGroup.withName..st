action
extractTemplate: aTemplate inGroup: anImageGroup withName: anImageName
	| destination |
	anImageGroup ensureNoImageWithName: anImageName.
	destination := anImageGroup directory / anImageName.
	destination ensureCreateDirectory.
	aTemplate extractTo: destination named: anImageName.
	self contentsChanged.