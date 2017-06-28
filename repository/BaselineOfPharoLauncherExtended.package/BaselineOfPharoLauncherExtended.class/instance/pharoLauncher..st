baseline
pharoLauncher: spec
	^ spec
		project: 'PharoLauncher' with: [ 
			spec
				className: 'ConfigurationOfPharoLauncher';
				version: #stable;
				repository: 'http://smalltalkhub.com/mc/Pharo/PharoLauncher/main' ];
		yourself