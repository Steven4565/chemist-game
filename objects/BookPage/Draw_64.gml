var pages = getUnlockedPages();

if (array_length(pages) == 0) {
	sprite_index = BookBlank;
} else {
	sprite_index = pages[pageIdx];
}



draw_self();
 