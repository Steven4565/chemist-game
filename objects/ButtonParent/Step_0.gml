hovering = position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id);

if (clicked) sprite_index = clickSprite;
else if (hovering) sprite_index = hoverSprite;
else sprite_index = idleSprite;

if (!hovering) clicked = false;

if (hovering && mouse_check_button_pressed(mb_left)) {
	clicked = true;
} 

if (clicked && hovering && mouse_check_button_released(mb_left)) {
	onClick();	
}