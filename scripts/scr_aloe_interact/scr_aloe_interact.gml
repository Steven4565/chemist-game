// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_aloe_interact(){
	if (oAloe.aloeCount < oAloe.maxAloeCount) {
    oAloe.aloeCount++;
    show_message("You collected an aloe! Total collected: " + string(oAloe.aloeCount) + "/" + string(oAloe.maxAloeCount));
} else {
    show_message("You already collected this aloe.");
}
}