// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_rope_interact(){
	if (!oRope.ropeCollected) 
	{
	 oRope.ropeCollected = true;
	  show_message("You collected the rope!");
	} 
	else 
	{
	    show_message("You already collected the rope.");
	}
}