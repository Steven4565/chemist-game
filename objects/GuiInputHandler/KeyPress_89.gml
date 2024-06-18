// FIXME: This is temporary functionality.

for (var i = 0; i < array_length(QuestHandler.quests); i++) {
	var currQuest = QuestHandler.quests[i];
	if (currQuest.done) continue
	
	if (currQuest.name == "Alchemist's glasses") {
		QuestHandler.quests[i].done = true
		AlchemistNPC.conversationIdx = 1;
		BookPage.pageSpriteMap[0].unlocked = true;
	} 
	else if (currQuest.name == "Fix Elder Jack's well") {
		QuestHandler.quests[i].done = true;
		ElderNPC.conversationIdx = 1;
		GatekeeperNPC.conversationIdx = 1;
		BookPage.pageSpriteMap[1].unlocked = true;
	}
	else if (currQuest.name == "Help Camper") {
		QuestHandler.quests[i].done = true;
		CamperNPC.conversationIdx = 1;
		BookPage.pageSpriteMap[2].unlocked = true;
	}
	else if (currQuest.name == "Fix Guard's Cart") {
		QuestHandler.quests[i].done = true;
		Gatekeeper2NPC.conversationIdx = 1;
		BookPage.pageSpriteMap[3].unlocked = true;
	}
	
	break;

}