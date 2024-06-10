
var _playerCloseby = distance_to_object(oPlayer) <= 20

// Handle button visibility
button.visible = _playerCloseby ? true : false




// Handle on click
if (_playerCloseby && keyboard_check(ord("E"))) {
	// Show dialog
	showingDialog = true;
	oPlayer.hasmovement = false;
	
}
if (showingDialog) {
	// TODO: stop player from moving, show dialog
	// Get message
	// message = data.getmessage()
	// show message
	// dialog.showMessage(message id)
	
}