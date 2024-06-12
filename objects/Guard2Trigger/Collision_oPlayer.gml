if (!oPlayer.guard2Cleared) {
	var callback =  function () {
		array_push(	
			QuestHandler.quests, 	
			{
				name: "Fix Guard's Cart",
				done: false
			}
		)
	}
	Gatekeeper2NPC.triggerDialog(callback);
	oPlayer.guard2Cleared = true;
}