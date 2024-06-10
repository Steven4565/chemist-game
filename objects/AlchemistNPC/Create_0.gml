/// @description Insert description here

convs = [
	new Conversation(
		"cHello",
		[
			"test",
			"hello"
		],
		[
			new Option("oHello", "cHelloBack", undefined),
			new Option("oHi", "cHiBack", undefined),
		]
	),
	new Conversation(
		"cHelloBack",
		[
			"hello back"
		],
		undefined
	),
	new Conversation(
		"cHiBack",
		[
			"hi back"
		],
		undefined
	)
]

data = new NpcData("npc1", convs, "sStart", undefined);
showingDialog = false;

// Button
button = instance_create_layer(x, y, "Instances", NpcButton);
button.visible = false;
button.image_xscale = 0.5;
button.image_yscale = 0.5;
button.x = self.x + 15
button.depth = -1000

self.depth = -self.y;