var vw = camera_get_view_width(view_camera[0]);
var vh = camera_get_view_height(view_camera[0]);

// Draw Book
if (bookDisplayed) {
	show_debug_message(DrawGUI.chatboxDisplayed)
	for (var i = 0; i < array_length(instances); i++) {
		instances[i].visible = true;	
	}
	
	oPlayer.toggleMovement(false);
	
} else {
	for (var i = 0; i < array_length(instances); i++) {
		instances[i].visible = false;
	}
}

if (global.drawHUD) {
	bookButton.visible = true;	
} else {
	bookButton.visible = false;	
}