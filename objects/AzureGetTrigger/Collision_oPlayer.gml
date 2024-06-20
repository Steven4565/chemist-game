
var triggerDialog = function (callback = function () {}) {
    DrawGUI.displayChatbox(
        messages, 
        authors,
        callback
    )
    oPlayer.toggleMovement(false);
}

if (!oPlayer.azureObtained) {
	triggerDialog();
	oPlayer.azureObtained = true;
}