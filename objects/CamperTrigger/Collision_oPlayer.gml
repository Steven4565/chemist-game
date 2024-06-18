if (!oPlayer.camperLevelCleared) {
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
	oPlayer.camperLevelCleared = true;
}