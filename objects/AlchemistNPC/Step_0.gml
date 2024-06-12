playerClose = distance_to_object(oPlayer) <= 20

// Handle button visibility
button.visible = playerClose ? true : false


function triggerDialog() {
	var currConv = conversations[conversationIdx];
	DrawGUI.displayChatbox(
		currConv[0],
		currConv[1]
	)
	oPlayer.toggleMovement(false);	
}