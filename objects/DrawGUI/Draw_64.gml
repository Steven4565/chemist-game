var vw = camera_get_view_width(view_camera[0]);
var vh = camera_get_view_height(view_camera[0]);


function displayChatbox(texts, authors, _callback = function () {}) {
	chatboxDisplayed = true;
	chatboxTexts = texts;
	textAuthors = authors;
	
	callback = _callback;
	oPlayer.toggleMovement(false);
}

// Draw chatbox
if (chatboxDisplayed) {
	if (keyboard_check_pressed(vk_space)) {
		chatIdx++;
		show_debug_message(chatIdx)
	}
	
	show_debug_message(array_length(chatboxTexts))
	// Check if chatbox is empty
	if (chatIdx >= array_length(chatboxTexts)) {
		chatboxDisplayed = false; 
		chatIdx = 0;
		oPlayer.toggleMovement(true);
		callback();
		
	} else {
		// Weird error idk why
		oPlayer.toggleMovement(false);

		// TextBox
		draw_sprite_ext(TextBox, 0, vw, vh + 250, 10.5, 10.5, 0, c_white, 1);
	
		// Draw text
		draw_set_color(c_black)
		draw_set_font(DialogFont)
		draw_text(50, vh + 100, textAuthors[chatIdx]);
		draw_text(50, vh + 180, chatboxTexts[chatIdx]);
		
	}
	
}

