// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_sand_interact()
{
	if (!oSand.sandCollected) 
	{
		oSand.sandCollected = true;
		show_message("You collected the sand!");
	}
	else 
	{
    show_message("You already collected the sand.");
	}
}