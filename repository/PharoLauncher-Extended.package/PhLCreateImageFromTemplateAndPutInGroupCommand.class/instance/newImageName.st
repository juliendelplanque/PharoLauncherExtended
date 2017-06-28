as yet unclassified
newImageName
	^ newImageName ifNil: [ newImageName := context requestNewImageName: context singleTemplateName ]