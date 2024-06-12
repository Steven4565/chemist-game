if (!oPlayer.guard1Cleared) {
	var callback =  function () {
		array_push(	
			QuestHandler.quests, 	
			{
				name: "Fix Elder Jack's well",
				done: false
			}
		)
	}
	ElderNPC.triggerDialog(callback);
	oPlayer.guard1Cleared = true;
}