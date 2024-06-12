var vw = camera_get_view_width(view_camera[0]);
var vh = camera_get_view_height(view_camera[0]);


function displayBook() {
	bookDisplayed = true;
}

// Draw Book
if (bookDisplayed) {
	for (var i = 0; i < array_length(pageSprites); i++) {
		var scale = 1.2;
		draw_sprite_ext(pageSprites[i], 0, vw, vh, scale, scale, 0, c_white, 1);
	}
	//if (keyboard_check_pressed(vk_space)) {
	//	chatIdx++;
	//	show_debug_message(chatIdx)
	//}

}

