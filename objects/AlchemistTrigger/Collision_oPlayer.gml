if (!QuestHandler.questTriggers.alchemist) {
	var callback =  function () {
		array_push(	
			QuestHandler.quests, 	
			{
				name: "Alchemist's glasses",
				done: false
			}
		)
		audio_play_sound(StartQuestSound, 1, false);
	}
	AlchemistNPC.triggerDialog(callback);
	QuestHandler.questTriggers.alchemist = true
}