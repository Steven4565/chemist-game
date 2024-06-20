if (playerClose && keyboard_check_pressed(ord("E"))) {	
	var _ = triggerDialog(, function (i) {
		if (i != 0) return;
		
		if(InventoryHandler.getInventory("aloe") <= 2) return;
		
		for (var j = 0; j < array_length(QuestHandler.quests); j++) {	
			if (QuestHandler.quests[j].name == "Help Camper") 
				QuestHandler.quests[j].done = true;
		}
				
		CamperNPC.conversationIdx = 1;
		BookPage.pageSpriteMap[2].unlocked = true;
		oPlayer.camperLevelCleared = true;
		audio_play_sound(FinishQuestSound, 1, false);
	});
}
