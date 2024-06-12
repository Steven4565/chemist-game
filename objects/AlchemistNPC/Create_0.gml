conversationOngoing = false;
dialogPage = 0;
conversationIdx = 0;

conversations = [
	[
		["You there, young one! Could you help me? My eyesight has been failing me, making me \nhard to work. Can you help me?", "Sure!"],
		["Alchemist", "You"]
	],
	[
		[
			"Thank you, young one. You've been a great help. What brings you to a village like\nthis?",
			"I'm trying to find the Azure Bloom to save my sister.",
			"Oh, you seek the Azure Bloom? You can ask the gatekeeper, as the Azure Bloom is\nlocated in the cave near the village."
		],
		["Alchemist", "You", "Alchemist"]
	],
]

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
