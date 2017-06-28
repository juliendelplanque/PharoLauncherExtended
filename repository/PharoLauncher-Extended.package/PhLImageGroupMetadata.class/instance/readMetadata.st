private
readMetadata
	^ (self directory / self fileBasename) readStreamDo: [ :s |
			STONJSON fromStream: s ]