action
execute
	self confirmDelete
		ifFalse: [ ^ self ].
	
	context imageRepository deleteGroup: context singleGroup