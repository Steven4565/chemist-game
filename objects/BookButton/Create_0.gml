event_inherited();

x = 50;
y = 140;


onClick = function() {
	if (!BookHandler.bookDisplayed) {
		BookHandler.bookDisplayed = true;
		audio_play_sound(BookOpenSound, 1, false);
	} 
}
