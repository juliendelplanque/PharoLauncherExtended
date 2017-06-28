action
moveImage: anImage to: group
	| anImageDirectory |
	anImageDirectory := anImage file parent.
	anImageDirectory moveTo: group directory / anImageDirectory basename.
	self contentsChanged