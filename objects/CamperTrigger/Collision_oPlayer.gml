if (!QuestHandler.questTriggers.camper) {
	var callback =  function () {
		array_push(	
			QuestHandler.quests, 
			{
				name: "Help Camper",
				done: false
			}
		)
	}
	CamperNPC.triggerDialog(callback);
	QuestHandler.questTriggers.camper = true;
}