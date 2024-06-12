var _key_down
var _key_right
var _key_up
var _key_left

var moving = false

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
    _key_right = keyboard_check(vk_right) || keyboard_check(ord("D")); // Corrected key binding
    _key_up = keyboard_check(vk_up) || keyboard_check(ord("W")); // Corrected key binding
    _key_down = keyboard_check(vk_down) || keyboard_check(ord("S")); // Corrected key binding
	
	if(_key_down){
		moving = true;
		direction = 1;
	}
	else if(_key_up){
		moving = true;
		direction = 0;
	}
	else if(_key_right){
		moving = true;
		direction = 3;
	}
	else if(_key_left){
		moving = true;
		direction = 2;
	}
	
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

// PLayer Moving Frame
if(moving)
{
	switch (direction) {
        case 0: sprite_index = Back; break;
        case 1: sprite_index = Front; break;
        case 2: sprite_index = Left; break;
        case 3: sprite_index = Right; break;
    }
	image_speed = imgspd
	//currentImageIndex = image_index;
}
else
{
	switch (direction) {
        case 0: image_index = 6; break;
        case 1: image_index = 6; break;
        case 2: image_index = 6; break;
        case 3: image_index = 6; break;
    }
	image_speed = 0
	//image_index = currentImageIndex
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
