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
	 array_push(collisionLayers, AlchemistBlocker);	
}
if (!oPlayer.guard1Cleared) {
	array_push(collisionLayers, Map1GatekeeperBlocker);	
}
if (!oPlayer.guard2Cleared) {
	array_push(collisionLayers, AzureBlocker);	
}

if(hasmovement){
	
	_key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
    _key_right = keyboard_check(vk_right) || keyboard_check(ord("D")); 
    _key_up = keyboard_check(vk_up) || keyboard_check(ord("W")); 
    _key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));
	
	if(_key_down){
		direction = 90;
	}
	else if(_key_up){
		direction = 270;
	}
	else if(_key_right){
		direction = 0;
	}
	else if(_key_left){
		direction = 180;
	}
	
	var moveH = _key_right - _key_left;
	var moveV = _key_down - _key_up;

	hsp = moveH;
	vsp = moveV;
	
	var magnitude = sqrt(hsp*hsp + vsp*vsp);
	if (magnitude != 0) {
		hsp = hsp / magnitude * movespd;
		vsp = vsp / magnitude * movespd;	
	}
}

else
{
	
	_key_down = 0;
	_key_right = 0;
	_key_left = 0;
	_key_up = 0;
}

// PLayer Moving Frame
if(abs(vsp) + abs(hsp))
{
	switch (direction) {
        case 270: sprite_index = Back; break;
        case 90: sprite_index = Front; break;
        case 180: sprite_index = Left; break;
        case 0: sprite_index = Right; break;
    }
	image_speed = imgspd
}
else
{
	sprite_index = Idle;
	image_speed = 0;
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
