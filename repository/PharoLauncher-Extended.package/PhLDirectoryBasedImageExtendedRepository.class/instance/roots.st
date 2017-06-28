accessing
roots
	^ (self groups sorted: [ :i1 :i2 | i1 name < i2 name ]) , (self images sorted: [ :i1 :i2 | i1 name < i2 name ])