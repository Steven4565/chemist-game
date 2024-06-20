if (playerClose && keyboard_check_pressed(ord("E"))) {	
	triggerDialog(, function (i) {
		if (i != 0) return;
		
		if(InventoryHandler.getInventory("sand") <= 0 || InventoryHandler.getInventory("wire") <= 1) return;
		
		for (var j = 0; j < array_length(QuestHandler.quests); j++) {	
			if (QuestHandler.quests[j].name == "Alchemist's glasses") 
				QuestHandler.quests[j].done = true;
		}
		
		InventoryHandler.removeInventory("sand", 1);
		InventoryHandler.removeInventory("wire", 2);
				
		AlchemistNPC.conversationIdx = 1;
		BookPage.pageSpriteMap[0].unlocked = true;
		audio_play_sound(FinishQuestSound, 1, false);

	});
}
