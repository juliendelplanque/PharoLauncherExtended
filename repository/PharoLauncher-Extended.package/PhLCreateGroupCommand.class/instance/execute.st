action
execute
	| groupName |
	groupName := PhLUIRequest new
						initialAnswer: 'New group';
						title: 'New group name';
						validateAnswer: [ :answer |
							context imageRepository groups noneSatisfy: [ :g | g name = answer ] ];
						request.
	groupName ifNil: [ ^ self ].
	context imageRepository createGroupNamed: groupName