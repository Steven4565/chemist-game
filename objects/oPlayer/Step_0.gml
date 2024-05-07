
var _key_down
var _key_right
var _key_up
var _key_left

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
if(place_meeting(x + hsp, y, oWall))
{
    while(!place_meeting(x + sign(hsp), y, oWall))
    {
        x += sign(hsp);
    }
    hsp = 0;
}

// Vertical collision resolution
if(place_meeting(x, y + vsp, oWall))
{
    while(!place_meeting(x, y + sign(vsp), oWall))
    {
        y += sign(vsp);
    }
    vsp = 0;
}

// Move the object after resolving collisions
x += hsp;
y += vsp;
