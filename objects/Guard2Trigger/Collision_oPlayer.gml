if (!QuestHandler.questTriggers.guard2) {
	var callback =  function () {
		array_push(	
			QuestHandler.quests, 
			{
				name: "Fix Guard's Cart",
				done: false
			}
		)
		audio_play_sound(StartQuestSound, 1, false);
	}
	QuestHandler.questTriggers.guard2 = true;
	Gatekeeper2NPC.triggerDialog(callback)
}