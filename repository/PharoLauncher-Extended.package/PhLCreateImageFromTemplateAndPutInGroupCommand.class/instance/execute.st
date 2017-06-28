action
execute
	| groupName group name |
	groupName := PhLListChoice new
						message: 'Please select the group in which the image should be put in:';
						list: #('#root'),(context imageRepository groups collect: #name) sorted;
						choose.
	"Cancelled by user."
	groupName ifNil: [ ^ self ].
	
	group := context imageRepository groupNamed: groupName.
	name := self newImageName.
	name ifNil: [ ^ self ].
	self
		ensure: (group images noneSatisfy: [ :img | img name = name ]).
	
	context imageRepository
		extractTemplate: context singleTemplate inGroup: group withName: name