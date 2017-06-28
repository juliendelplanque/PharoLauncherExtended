action
createGroupNamed: aString
	| groupDirectory metadata |
	groupDirectory := (self baseDirectory / aString asCamelCase) ensureCreateDirectory.
	metadata := { 
		'name' -> aString
	 } asDictionary.
	(groupDirectory / 'group-meta.json') writeStreamDo: [ :s |
		 STONJSON put: metadata onStreamPretty: s ].

	self contentsChanged