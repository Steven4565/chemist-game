event_inherited();

x = 50;
y = 140;

//x = 1200;
//y = 700;

onClick = function() {
	show_debug_message("click")
	if (!BookHandler.bookDisplayed) {
		BookHandler.bookDisplayed = true;
	} 
}
