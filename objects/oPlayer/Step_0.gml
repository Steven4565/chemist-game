
var key_down
var key_right
var key_up
var key_left

if(hasmovement){
	
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);

var moveH = key_right - key_left;
var moveV = key_down - key_up;

hsp = moveH * movespd;
vsp = moveV * movespd;
}

else
{
	key_down = 0;
	key_right = 0;
	key_left = 0;
	key_up = 0;
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
