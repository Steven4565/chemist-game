if (playerClose && keyboard_check_pressed(ord("E"))) {	
	triggerDialog(, function (i) {
		if (i == 0) {
			var inventory = CollectibleHandler.inventory;
			if(inventory.sand > 0 && inventory.wire > 0){
				QuestHandler.quests[i].done = true
				AlchemistNPC.conversationIdx = 1;
				BookPage.pageSpriteMap[0].unlocked = true;
			}
		}
	});
}
