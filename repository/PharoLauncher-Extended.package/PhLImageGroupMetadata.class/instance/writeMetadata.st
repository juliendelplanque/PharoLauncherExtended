private
writeMetadata
	| metaToWrite |
	metaToWrite := self readMetadata.
	tempMetadata keysAndValuesDo: [ :key :value |
		metaToWrite at: key put: value ].
	(self directory / self fileBasename) writeStreamDo: [ :s |
		STONJSON put: metaToWrite onStreamPretty: s ].
	self resetTempMetadata