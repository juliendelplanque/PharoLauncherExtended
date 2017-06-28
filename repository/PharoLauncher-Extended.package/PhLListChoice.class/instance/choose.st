actions
choose
	| choiceIndex |
	choiceIndex := UIManager default chooseFrom: self list message: self message.
	choiceIndex = 0
		ifTrue: [ ^ nil ].
	
	^ self list at: choiceIndex