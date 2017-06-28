private
groupFromDirectory: dir
	| metadataFile metadata group |
	metadataFile := dir / 'group-meta.json'.
	metadataFile exists ifFalse: [ ^ nil ].
	[
		metadata := metadataFile readStreamDo: [ :s | STONJSON fromStream: s  ].
		group := PhLImageGroup new
						directory: dir;
						images: ((dir directories collect: [ :d | self imageFromDirectory: d ])
										reject: #isNil);
						yourself
	] on: Error do: [ ^ nil ].
	^ group