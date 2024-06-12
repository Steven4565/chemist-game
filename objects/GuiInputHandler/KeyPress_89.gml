for (var i = 0; i < array_length(QuestHandler.quests); i++) {
	if (QuestHandler.quests[i].name == "Alchemist's glasses") {
		QuestHandler.quests[i].done = true
		AlchemistNPC.conversationIdx = 1;
		BookPage.pageSpriteMap[0].unlocked = true;
	}
	if (QuestHandler.quests[i].name == "Fix Elder Jack's well") {
		QuestHandler.quests[i].done = true;
		ElderNPC.conversationIdx = 1;
		GatekeeperNPC.conversationIdx = 1;
		BookPage.pageSpriteMap[1].unlocked = true;
	}
}