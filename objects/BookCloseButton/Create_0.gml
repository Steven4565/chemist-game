event_inherited();

clickedSprite = Close_click;
hoverSprite = Close_hover;
idleSprite = Close_idle;

x = 1060;
y = 100;

onClick = function() {
	BookHandler.bookDisplayed = false;
	oPlayer.toggleMovement(true);
	audio_play_sound(BookCloseSound, 1, false);
}
