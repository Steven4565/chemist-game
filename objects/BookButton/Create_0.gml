event_inherited();

vw = camera_get_view_width(view_camera[0]);
vh = camera_get_view_height(view_camera[0]);


x = vw * 2 - 50;
y = 50;


onClick = function() {
	if (!BookHandler.bookDisplayed) {
		BookHandler.bookDisplayed = true;
		audio_play_sound(BookOpenSound, 10, false);
	} 
}
