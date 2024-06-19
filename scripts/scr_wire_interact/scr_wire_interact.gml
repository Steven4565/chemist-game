// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_wire_interact(){
	if (!oWire.wireCollected) 
	{
		oWire.wireCollected = true;
		show_message("You collected the wire!");
	} 
	else 
	{
		show_message("You already collected the wire.");
	}
}