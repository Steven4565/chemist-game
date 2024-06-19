var messages = [
	"Finally! I have obtained the Azure Bloom flower!",
	"With this, I can at last cure my sister..."
]

var authors = [
	"You",
	"You"
]

function triggerDialog(callback = function () {}) {
    var currConv = conversations[conversationIdx];

    var messages = [];
    var authors = [];

    for (var i = 0; i < array_length(currConv); i++) {
        array_push(messages, currConv[i].message);
        array_push(authors, currConv[i].author);
    }



    DrawGUI.displayChatbox(
        messages, 
        authors,
        callback
    )
    oPlayer.toggleMovement(false);
}

if (!oPlayer.azureObtained) {
	triggerDialog(callback);
	oPlayer.azureObtained = true;
}
