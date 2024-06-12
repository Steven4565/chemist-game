playerClose = distance_to_object(oPlayer) <= 20

// Handle button visibility
button.visible = playerClose ? true : false


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