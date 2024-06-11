hsp = 0;
vsp = 0;
movespd = 4;
hasmovement = true;

floor1Tilemap = layer_tilemap_get_id(layer_get_id("Floor1Collision"))
floor2Tilemap = layer_tilemap_get_id(layer_get_id("Floor2Collision"))

playerFloor=1

function toggleMovement(isMovable) {
	if (!isMovable) {
		hasmovement = false;
		hsp = 0;
		vsp = 0;
	} else {
		hasmovement = true;
	}
}