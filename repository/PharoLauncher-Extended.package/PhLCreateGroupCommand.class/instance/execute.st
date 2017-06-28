action
execute
	| groupName |
	groupName := self requestGroupNameInContext: context.
	groupName ifNil: [ ^ self ].
	context imageRepository createGroupNamed: groupName