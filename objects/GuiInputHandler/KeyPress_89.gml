for (var i = 0; i < array_length(QuestHandler.quests); i++) {
	if (QuestHandler.quests[i].done == false) {
		QuestHandler.quests[i].done = true
		AlchemistNPC.conversationIdx++;
	}
}