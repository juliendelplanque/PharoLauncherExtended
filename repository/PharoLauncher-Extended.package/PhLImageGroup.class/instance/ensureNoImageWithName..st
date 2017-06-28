action
ensureNoImageWithName: anImageName
	(self images anySatisfy: [ :any | any name = anImageName ])
		ifTrue: [ PhLError signal: 'An image with the same name already exists in the group.' ]