private
groupFromDirectory: dir
	| metadataFile metadata group |
	metadataFile := dir / 'group-meta.json'.
	metadataFile exists ifFalse: [ ^ nil ].
	[
		metadata := metadataFile readStreamDo: [ :s | STONJSON fromStream: s  ].
		group := PhLImageGroup new
						name: (metadata at: 'name');
						directory: dir;
						yourself
	] on: Error do: [ ^ nil ].
	^ group