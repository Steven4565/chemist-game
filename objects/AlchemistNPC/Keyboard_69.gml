if (playerClose && keyboard_check_pressed(ord("E"))) {	
	var _ = triggerDialog(, function (i) {
		if (i != 0) return;
		
		if(InventoryHandler.getInventory("sand") <= 0 || InventoryHandler.getInventory("wire") <= 0) return;
		
		for (var j = 0; j < array_length(QuestHandler.quests); j++) {	
			if (QuestHandler.quests[j].name == "Alchemist's glasses") 
				QuestHandler.quests[j].done = true;
		}
				
		AlchemistNPC.conversationIdx = 1;
		BookPage.pageSpriteMap[0].unlocked = true;
		audio_play_sound(FinishQuestSound, 1, false);

	});
}
