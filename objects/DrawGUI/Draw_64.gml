var vw = camera_get_view_width(view_camera[0]);
var vh = camera_get_view_height(view_camera[0]);

function displayChatbox(texts) {
	chatboxDisplayed = true;
	chatboxTexts = texts;
	
}

// Draw chatbox
if (chatboxDisplayed) {
	if (keyboard_check_pressed(ord("E"))) {
		chatIdx++;
		show_debug_message(chatIdx)
	}
	
	show_debug_message(array_length(chatboxTexts))
	// Check if chatbox is empty
	if (chatIdx >= array_length(chatboxTexts)) {
		chatboxDisplayed = false;
		// This needs to start from -1, because when the player presses E, 
		// GMS also runs this code on the same frame, meaning while the "E" button is still down.
		// THis results in the chatbox being instantly closed
		// So we need to offset it by -1
		chatIdx = -1;
		
	} else {
		// Weird error idk why
		oPlayer.toggleMovement(false);

		// TextBox
		draw_sprite_ext(TextBox, 0, vw, vh + 250, 2, 1.5, 0, c_white, 1);
	
		// Draw text
		draw_set_color(c_black)
		draw_set_font(DialogFont)
		draw_text(50, vh + 130, chatboxTexts[chatIdx]);
		oPlayer.toggleMovement(true);
	}
	
}


// Draw quests
for (var i = 0; i < array_length(quests); i++) {
	var curQuestHeight = 20 + (sprite_get_height(QuestBackground)+ 20) * i;
	var curQuestWidth = 20;
	draw_sprite_ext(QuestBackground, 0, curQuestWidth, curQuestHeight, 1, 1, 0, c_white, 1);
	
	draw_set_color(c_black)
	draw_set_font(DialogFont)
	draw_text(curQuestWidth + 5, curQuestHeight + 25, quests[i]);
}