world menu
menuCommandOn: aBuilder 
	<worldMenu> 

	(aBuilder item: #'Pharo Launcher Extended')
		icon: self pharoIcon16x16;
		action: [ self open ].
	aBuilder withSeparatorAfter.