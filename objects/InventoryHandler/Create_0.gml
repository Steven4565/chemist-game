ITEM_LIST = {
	"aloe": {
		name: "Aloe Vera",
		sprite: AloeVera
	},
	"sand": {
		name: "Sand",
		sprite: SandPowder
	},
	"toolkit": {
		name: "Toolkit",
		sprite: SandPowder
	},
	"rope": {
		name: "Rope",
		sprite: MetalWire
	},
	"wire": {
		name: "Wire",
		sprite: MetalWire
	},
}

GAP = 10;

showInventory = true;

vw = camera_get_view_width(view_camera[0]);
vh = camera_get_view_height(view_camera[0]);

inventory = [
	{
		name: "aloe",
		count: 1,
	},
	noone,
	noone,
	noone,
	noone,
	noone,
	{
		name: "rope",
		count: 1,
	},
	{
		name: "wire",
		count: 1,
	}
];

function addInventory(itemId, count) {
	for (var i = 0; i < array_length(inventory); i++ ) {
		if (inventory[i].name != itemId) continue;
		
		inventory[i].count += count;
		break;
	}
	
	array_push(inventory, {
		"name": itemId,
		"count": count,
	});
	return noone;
}

function getInventory(name) {
	for (var i = 0; i < array_length(inventory); i++ ) {
		if (inventory[i].name != name) continue;
		return inventory[i].count;
		
	}
	return 0;
}




