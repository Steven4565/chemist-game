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

