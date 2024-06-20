var scale = 4;

if (showInventory && !DrawGUI.chatboxDisplayed) {
	draw_sprite_ext(InventoryBackground, 0, vw, vh*2 -80, scale, scale, 0, c_white, 1);
	
	for (var i = 0; i < 9; i++) {
		if (array_length(inventory) <= i) break;
		
		if (inventory[i] == noone) continue;
		
		var item = ITEM_LIST[$inventory[i].name];
		var invBgWidth = sprite_get_width(InventoryBackground) * scale;
		var spriteWidth = sprite_get_width(item.sprite) * i;
		var gap = i * 28;
		
		var xLoc = vw - (invBgWidth/2 - 52) + gap + spriteWidth;
		var yLoc =  vh*2 - 80;
		
		draw_sprite_ext(item.sprite, 0, xLoc , yLoc, 1, 1, 0, c_white, 1);
		
		draw_set_colour(c_white);
		draw_set_font(HotbarFont);
		draw_text(xLoc + 15, yLoc , inventory[i].count)
	}
}