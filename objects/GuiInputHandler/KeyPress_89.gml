// FIXME: This is temporary functionality.

for (var i = 0; i < array_length(QuestHandler.quests); i++) {
	var currQuest = QuestHandler.quests[i];
	if (currQuest.done) continue
	
	if (currQuest.name == "Alchemist's glasses") {
		
		if(oSand.sandCollected&&oWire.wireCollected){
		QuestHandler.quests[i].done = true
		AlchemistNPC.conversationIdx = 1;
		BookPage.pageSpriteMap[0].unlocked = true;
		}
		else{
	    show_message("You still need to collect required items.");
		}
	} 
	else if (currQuest.name == "Fix Elder Jack's well") {
		if(oRope.ropeCollected){
		QuestHandler.quests[i].done = true;
		ElderNPC.conversationIdx = 1;
		GatekeeperNPC.conversationIdx = 1;
		BookPage.pageSpriteMap[1].unlocked = true;
		oWell.sprite_index = FixedWell;
		oPlayer.guard1Cleared = true;
		}
		else{
	    show_message("You still need to collect the rope.");
		}
	}
	else if (currQuest.name == "Help Camper") {
		if (oAloe.aloeCount >= 3){
		QuestHandler.quests[i].done = true;
		CamperNPC.conversationIdx = 1;
		BookPage.pageSpriteMap[2].unlocked = true;
		oPlayer.camperLevelCleared = true;
		}
		else{
	    show_message("You still need to collect more aloe.");
		}
	}
	else if (currQuest.name == "Fix Guard's Cart") {
    if (variable_global_exists("toolkitCollected")) {
        if (global.toolkitCollected) {
            QuestHandler.quests[i].done = true;
            Gatekeeper2NPC.conversationIdx = 1;
            BookPage.pageSpriteMap[3].unlocked = true;
            oCart.sprite_index = FixedCart;
            oPlayer.guard2Cleared = true;
        } else {
            show_message("You still need to collect the tool kit.");
        }
    } else {
        show_debug_message("Global variable toolkitCollected does not exist!");
    }
}
	
	break;

}