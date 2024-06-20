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
		sprite: Toolbox
	},
	"rope": {
		name: "Rope",
		sprite: Rope
	},
	"wire": {
		name: "Wire",
		sprite: MetalWire
	},
}

showInventory = true;

vw = camera_get_view_width(view_camera[0]);
vh = camera_get_view_height(view_camera[0]);

//inventory = [
//	{
//		name: "aloe", 
//		count: 1
//	},
//	{
//		name: "wire", 
//		count: 1
//	},
//	{
//		name: "rope", 
//		count: 1
//	},
//	{
//		name: "toolkit", 
//		count: 1
//	},
//	{
//		name: "sand", 
//		count: 1
//	},
//	{
//		name: "aloe", 
//		count: 1
//	},
//	{
//		name: "aloe", 
//		count: 1
//	},{
//		name: "aloe", 
//		count: 1
//	},
//];

inventory = [];

for (var i =  0; i < 8; i++) {
	array_push(inventory, noone);
}	



function addInventory(itemId, count) {
	// Check if there are any existing items in the inventory
	
	var existingIdx = -1;
	for (var i = 0; i < min(array_length(inventory), 8); i++ ) {
		if (inventory[i] == noone) continue;
		if (inventory[i].name != itemId) continue;
		
		existingIdx = i;
		break;
	}
	
	if (existingIdx != -1) {
		inventory[existingIdx].count += count;
		return noone;
	}
	
	// Create a new item in the inventory
	for (var i = 0; i < min(array_length(inventory), 8); i++ ) {
		if (inventory[i] == noone) 	{
			inventory[i] = {
				name: itemId,
				count: count
			};
			return noone;
		}
	}
	
	show_debug_message("Inventory is full")
	
	return noone;
}

function getInventory(itemId) {
	for (var i = 0; i < min(array_length(inventory), 8); i++ ) {
		if (inventory[i] == noone) continue;
		if (inventory[i].name != itemId) continue;
		return inventory[i].count;
		
	}
	return 0;
}

function removeInventory(itemId, count) {
		for (var i = 0; i < min(array_length(inventory), 8); i++ ) {
		if (inventory[i] == noone) continue;
		if (inventory[i].name != itemId) continue;
		
		if (inventory[i].count < count) return false;
		
		inventory[i].count -= count;
		if (inventory[i].count == 0)
			inventory[i] = noone;
		
		break;
	}
	
	return true;
}


