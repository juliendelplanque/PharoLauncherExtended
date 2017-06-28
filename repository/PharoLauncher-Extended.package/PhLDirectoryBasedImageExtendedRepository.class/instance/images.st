accessing
images
	| images |
	images := OrderedCollection new.
	self baseDirectory directories
		do: [ :dir | 
			(self imageFromDirectory: dir)
				ifNotNil: [ :image | images add: image ]
				ifNil: [ 
					(self groupFromDirectory: dir)
						ifNotNil: [ :group | 
							images add: group ] ] ].
	^ images