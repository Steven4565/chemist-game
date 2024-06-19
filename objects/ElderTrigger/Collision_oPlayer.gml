if (!QuestHandler.questTriggers.elder) {
	var callback =  function () {
		array_push(	
			QuestHandler.quests, 	
			{
				name: "Fix Elder Jack's well",
				done: false
			}
		)
	}
	QuestHandler.questTriggers.elder = true;
	ElderNPC.triggerDialog(callback);
}