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
	context imageRepository createGroupNamed: groupName.
	
	"Move image to group."
	context selectedImages do: [ :image |
		context imageRepository moveImage: image to: (context imageRepository groupNamed: groupName) ].