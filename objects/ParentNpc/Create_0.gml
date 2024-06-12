conversationOngoing = false;
dialogPage = 0;
conversationIdx = 0;

conversations = [];

// State
playerClose = false;


// Button
button = instance_create_layer(x, y, "Instances", NpcButton);
button.visible = false;
button.image_xscale = 0.5;
button.image_yscale = 0.5;
button.x = self.x + 15
button.depth = -1000

self.depth = -self.y;