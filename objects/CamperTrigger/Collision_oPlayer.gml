if (!QuestHandler.questTriggers.camper) {
	var callback =  function () {
		array_push(	
			QuestHandler.quests, 
			{
				name: "Help Camper",
				done: false
			}
		)
		audio_play_sound(StartQuestSound, 1, false);
	}
	CamperNPC.triggerDialog(callback);
	QuestHandler.questTriggers.camper = true;
}