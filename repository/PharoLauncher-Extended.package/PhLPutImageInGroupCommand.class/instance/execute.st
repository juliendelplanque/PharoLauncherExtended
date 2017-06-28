action
execute
	| groupName group |
	groupName := PhLListChoice new
						message: 'Please select the group in which the image should be put in:';
						list: #('#root'),(context imageRepository groups collect: #name) sorted;
						choose.
	"Cancelled by user."
	groupName ifNil: [ ^ self ].
	"User wants to move image to root group."
	(self shouldImageBeMovedToRoot: groupName)
		ifTrue: [ 
			context selectedImages do: [ :image | context imageRepository moveImageToRootGroup: image ].
			^ self ].
	"User wants to move in a group."
	group := context imageRepository groups detect: [ :g | g name = groupName ].
	context selectedImages do: [ :image |
		context imageRepository moveImage: image to: group ].