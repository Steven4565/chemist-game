event_inherited();

clickedSprite = Close_click;
hoverSprite = Close_hover;
idleSprite = Close_idle;

x = 1060;
y = 100;

onClick = function() {
	global.drawHUD = true;
	BookHandler.bookDisplayed = false;
	oPlayer.toggleMovement(true);
	audio_stop_sound(BookOpenSound);
	audio_play_sound(BookCloseSound, 1, false);
}
