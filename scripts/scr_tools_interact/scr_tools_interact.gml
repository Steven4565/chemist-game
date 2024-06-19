// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_tools_interact(){
	if (!variable_global_exists("toolkitCollected")) {
    show_debug_message("Global variable toolkitCollected does not exist!");
    return;
}
if (!global.toolkitCollected) {
    global.toolkitCollected = true; // Update global state to indicate toolkit has been collected
    show_message("You collected the toolkit!");
    // Additional logic for what happens when the toolkit is collected
} else {
    show_message("You already collected the toolkit.");
}
}