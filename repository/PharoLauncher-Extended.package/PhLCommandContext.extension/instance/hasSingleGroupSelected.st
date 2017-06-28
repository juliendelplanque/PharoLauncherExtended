*PharoLauncher-Extended
hasSingleGroupSelected
	^ (selection size = 1) and: [ selection anyOne isGroup ]