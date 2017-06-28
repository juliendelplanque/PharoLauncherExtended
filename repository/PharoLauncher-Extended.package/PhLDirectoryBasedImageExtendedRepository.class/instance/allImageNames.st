accessing
allImageNames
	^ (self images collect: #name) , ((self groups collect: #images) flattened collect: #name)