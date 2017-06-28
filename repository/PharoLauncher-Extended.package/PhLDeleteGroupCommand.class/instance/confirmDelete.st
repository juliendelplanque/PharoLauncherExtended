action
confirmDelete
	^ PhLUIConfirmation new
		message: 'Do you really want to delete the group and all its images? (This action can not be undone)';
		confirm