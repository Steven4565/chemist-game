//inventory = {
//	"wire": 0,
//	"sand": 0,
//	"aloe": 0,
//	"tools": 0,
//	"rope": 0,
//}

showInventory = true;

vw = camera_get_view_width(view_camera[0]);
vh = camera_get_view_height(view_camera[0]);

inventory = [
	{
		"name": "aloe",
		count: 1,
	}
];

function addInventory(name, count) {
	for (var i = 0; i < array_length(inventory); i++ ) {
		if (inventory[i].name != name) continue;
		
		inventory[i].count += count;
		break;
	}
	
	array_push(inventory, {
		"name": name,
		"count": count,
	});
}