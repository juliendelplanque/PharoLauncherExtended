action
execute
	| groupName group newImageName |
	groupName := PhLListChoice new
						message: 'Please select the group in which the image should be put in:';
						list: #('#root'),(context imageRepository groups collect: #name) sorted;
						choose.
	"Cancelled by user."
	groupName ifNil: [ ^ self ].
	group := context imageRepository groupNamed: ''.
	newImageName := context requestNewImageName: context singleTemplateName