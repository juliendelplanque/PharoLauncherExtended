private
valueOfProperty: aKey ifAbsent: aBlock
	^ self readMetadata at: aKey ifAbsent: aBlock