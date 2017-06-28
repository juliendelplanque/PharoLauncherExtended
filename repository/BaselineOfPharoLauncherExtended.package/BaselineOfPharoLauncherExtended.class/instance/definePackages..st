baseline
definePackages: spec
	^ spec
		package: 'PharoLauncher-Extended' with: [ spec requires: #('PharoLauncher') ];
		yourself