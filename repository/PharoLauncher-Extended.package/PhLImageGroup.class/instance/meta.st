accessing
meta
	^ meta ifNil: [ meta := PhLImageGroupMetadata new
										directory: self directory;
										yourself ]