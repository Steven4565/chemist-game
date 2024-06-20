if (playerClose && keyboard_check_pressed(ord("E"))) {	
	var _ = triggerDialog(, function (i) {
		if (i != 0) return;
		
		var inventory = CollectibleHandler.inventory;
		if (inventory.rope <= 0) return;
		
		for (var j = 0; j < array_length(QuestHandler.quests); j++) {	
			if (QuestHandler.quests[j].name == "Fix Guard's Cart") 
				QuestHandler.quests[j].done = true;
		}
				
        Gatekeeper2NPC.conversationIdx = 1;
        BookPage.pageSpriteMap[3].unlocked = true;
        oCart.sprite_index = FixedCart;
        oPlayer.guard2Cleared = true;
		audio_play_sound(FinishQuestSound, 1, false);
	});
}
