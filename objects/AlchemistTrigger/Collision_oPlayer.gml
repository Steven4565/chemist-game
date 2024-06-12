if (!oPlayer.alchemistLevelCleared) {
	var callback =  function () {
		array_push(	
			QuestHandler.quests, 	
			{
				name: "Alchemist's glasses",
				done: false
			}
		)
		array_push(	
			QuestHandler.quests, 	
			{
				name: "Alchemist's glasses",
				done: false
			}
		)
	}
	AlchemistNPC.triggerDialog(callback);
	oPlayer.alchemistLevelCleared = true;
}