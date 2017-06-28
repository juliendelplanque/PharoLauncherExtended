instance creation
createLauncher
	^ self basicNew
		setImageRepository: (PhLDirectoryBasedImageExtendedRepository forDirectory: PhLDirectoryBasedImageExtendedRepository defaultLocation)
			templateRepository: PhLTemplateGroupRepository forSelectedGroups;
		initialize;
		yourself