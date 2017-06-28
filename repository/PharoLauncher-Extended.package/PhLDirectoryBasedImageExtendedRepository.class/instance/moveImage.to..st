action
moveImage: anImage to: group
	| anImageDirectory |
	anImageDirectory := anImage file parent.
	
	"User wants to move the image to the group in which it is."
	anImageDirectory parent = (group directory / anImageDirectory basename)
		ifTrue: [ ^ self ].
	
	"Else, move it."
	anImageDirectory moveTo: group directory / anImageDirectory basename.
	self contentsChanged