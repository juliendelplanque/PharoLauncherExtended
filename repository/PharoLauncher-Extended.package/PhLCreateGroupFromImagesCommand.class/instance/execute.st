action
execute
	| groupName |
	groupName := self requestGroupNameInContext: context.
	groupName ifNil: [ ^ self ].
	context imageRepository createGroupNamed: groupName.
	
	"Move image to group."
	context selectedImages do: [ :image |
		context imageRepository moveImage: image to: (context imageRepository groupNamed: groupName) ].