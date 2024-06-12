var _key_down
var _key_right
var _key_up
var _key_left

var collisionTile = floor1Tilemap

if (playerFloor == 2) {
	collisionTile = floor2Tilemap
}

var collisionLayers = [collisionTile];
if (!oPlayer.alchemistLevelCleared) {
	 array_push(collisionLayers, AlchemistCollider);	
}

if(hasmovement){
	_key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
	_key_right = keyboard_check(vk_right)|| keyboard_check(ord("A"));
	_key_up = keyboard_check(vk_up)|| keyboard_check(ord("A"));
	_key_down = keyboard_check(vk_down)|| keyboard_check(ord("A"));

	var moveH = _key_right - _key_left;
	var moveV = _key_down - _key_up;

	hsp = moveH * movespd;
	vsp = moveV * movespd;
}

else
{
	_key_down = 0;
	_key_right = 0;
	_key_left = 0;
	_key_up = 0;
}



// Horizontal collision resolution
if(checkCollision(x + hsp, y, collisionLayers))
{
    while(!checkCollision(x + sign(hsp), y, collisionLayers))
    {
        x += sign(hsp);
    }
    hsp = 0;
}



// Vertical collision resolution
if(checkCollision(x, y + vsp, collisionLayers))
{
    while(!checkCollision(x, y + sign(vsp), collisionLayers))
    {
        y += sign(vsp);
    }
    vsp = 0;
}

// Move the object after resolving collisions
x += hsp;
y += vsp;

self.depth = -self.y
