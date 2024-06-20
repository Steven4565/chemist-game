if (playerClose && keyboard_check_pressed(ord("E"))) {	
	var _ = triggerDialog(, function (i) {
		if (i != 0) return;
		
		if(InventoryHandler.getInventory("rope") <= 0) return;
		
		for (var j = 0; j < array_length(QuestHandler.quests); j++) {	
			if (QuestHandler.quests[j].name ==  "Fix Elder Jack's well") 
				QuestHandler.quests[j].done = true;
		}
				
		ElderNPC.conversationIdx = 1;
		GatekeeperNPC.conversationIdx = 1;
		BookPage.pageSpriteMap[1].unlocked = true;
		oWell.sprite_index = FixedWell;
		oPlayer.guard1Cleared = true;
		audio_play_sound(FinishQuestSound, 1, false);
	});
}
