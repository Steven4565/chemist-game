
hsp = 0;
vsp = 0;
movespd = 4;
hasmovement = true;
imgspd = 1.5;

persistent = true;

image_index = 6;
direction = -1;

floor1Tilemap = layer_tilemap_get_id(layer_get_id("Floor1Collision"))
floor2Tilemap = layer_tilemap_get_id(layer_get_id("Floor2Collision"))

playerFloor=1

alchemistLevelCleared = false;
guard1Cleared = false;


function toggleMovement(isMovable) {
	if (!isMovable) {
		hasmovement = false;
		hsp = 0;
		vsp = 0;
	} else {
		hasmovement = true;
	}
}

function checkCollision(x, y, layers) {
	var collided = false;
	for (var i = 0; i < array_length(layers); i++) {
		if (place_meeting(x, y, layers[i])) {
			collided = true;
			return true;
		}
	}
	
	return false;
}