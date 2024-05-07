/// @description             Represents a conversation in the game.
/// @param {string}          _name            The name of the conversation.
/// @param {Array.string}        _messages        Array of messages exchanged during the conversation.
/// @param {Array.Option|undefined}        _options         Optional array of options available during the conversation.
function Conversation(_name, _messages, _options) constructor  {
	name = _name;
	messages = _messages; // String array
	options = _options;
}

/// @description             Represents an option for the player to choose during a conversation.
/// @param {String}          _name             The name of the option.
/// @param {String}          _nextConvName     The name of the next conversation to proceed to.
/// @param {function|undefined}        _callback         Optional callback function to execute when the option is chosen.
function Option(_name, _nextConvName, _callback) constructor {
	name = _name;
	nextConvName = _nextConvName;
	callback = _callback;
}


/// @description             Represents an NPC in the game.
/// @param {string}           _name         The name of the NPC.
/// @param {Array.Conversation}   _convs        Array of conversations the NPC can have.
/// @param {string}           _state        Current state of the NPC.
/// @param {function}         _finishQuestCallback  Method to mark the quest as finished.
function NpcData(_name, _convs, _state, _finishQuestCallback) constructor {
	name = _name;
	convs = _convs;
	state = _state
	finishQuestCallback = _finishQuestCallback;
}