action
moveImageToRootGroup: anImage
	| anImageDirectory |
	anImageDirectory := anImage file parent.
	anImageDirectory moveTo: self baseDirectory / anImageDirectory basename.
	self contentsChanged