testing
shouldImageBeMovedToRoot: groupName
	^ groupName = '#root'
			and: [ context singleImage file parent parent ~= context imageRepository baseDirectory ]