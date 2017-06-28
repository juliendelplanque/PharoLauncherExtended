accessing
groups
	| groups |
	groups := OrderedCollection new.
	self baseDirectory directories
		do: [ :dir | 
			(self groupFromDirectory: dir)
				ifNotNil: [ :group | groups add: group ] ].
	^ groups