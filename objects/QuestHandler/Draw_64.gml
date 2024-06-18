// Draw quests
var activeQuests = array_filter(quests, function (el, i) {
	return el.done != true
})

for (var i = 0; i < array_length(activeQuests); i++) {
	var curQuestHeight = 20 + (sprite_get_height(QuestBackground) * 3 + 20) * i;
	var curQuestWidth = 20;
	draw_sprite_ext(QuestBackground, 0, curQuestWidth, curQuestHeight, 3, 3, 0, c_white, 1);
	
	draw_set_color(c_black)
	draw_set_font(DialogFont)
	draw_text(curQuestWidth + 25, curQuestHeight + 25, quests[i].name);
}