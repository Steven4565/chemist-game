if (!oPlayer.alchemistLevelCleared) {
	var callback =  function () {
		array_push(	
			QuestHandler.quests, 	
			{
				name: "Alchemist's glasses",
				done: false
			}
		)
		show_debug_message("test");
	}
	AlchemistNPC.triggerDialog(callback);
	oPlayer.alchemistLevelCleared = true;
}