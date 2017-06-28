action
requestGroupNameInContext: context
	^ PhLUIRequest new
		initialAnswer: 'New group';
		title: 'New group name';
		validateAnswer: [ :answer |
		context imageRepository groups noneSatisfy: [ :g | g name = answer ] ];
		request