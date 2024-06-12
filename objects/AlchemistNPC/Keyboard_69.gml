// Handle on press
if (playerClose && keyboard_check_pressed(ord("E"))) {
	// Wait until E is released
	while (keyboard_check_released(ord("E"))) {
		show_debug_message("e");
	}

	DrawGUI.displayChatbox(["Hi there!", "I'm an alchemist", "My name is Jackson Wang"])
	oPlayer.toggleMovement(false);
}
