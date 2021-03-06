action
execute
	| groupName "group" |
	groupName := PhLListChoice new
						message: 'Please select the group in which the image should be put in:';
						list: #('#root'),(context imageRepository groups collect: #name) sorted;
						choose.
	"Cancelled by user."
	groupName ifNil: [ ^ self ].
	
	"Move image to group."
	context selectedImages do: [ :image |
		context imageRepository moveImage: image to: (context imageRepository groupNamed: groupName) ].