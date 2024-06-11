playerClose = distance_to_object(oPlayer) <= 20

// Handle button visibility
button.visible = playerClose ? true : false