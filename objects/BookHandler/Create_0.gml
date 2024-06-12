bookDisplayed = false;

closeHovering = false;
leftArrowHovering = false;
rightArrowHovering = false

bookPage = instance_create_layer(50, 140, "GameHandlers", BookPage);
closeButton = instance_create_layer(x, y, "GameHandlers", BookCloseButton);
leftButton = instance_create_layer(x, y, "GameHandlers", BookLeftButton);
rightButton = instance_create_layer(x, y, "GameHandlers", BookRightButton);

instances = [bookPage, closeButton, rightButton, leftButton];
	
bookPage.visible = false;
closeButton.visible = false;
rightButton.visible = false;
leftButton.visible = false;

bookPage.depth = 5000;
closeButton.depth = 4000;
rightButton.depth = 4000;
leftButton.depth = 4000;

function nextPage() {
	if (BookPage.pageIdx >= array_length(BookPage.getUnlockedPages()) - 1) {
		return;
	}
	show_debug_message(BookPage.pageIdx)
		
	BookPage.pageIdx++;
	show_debug_message(BookPage.pageIdx)
	
}

function prevPage() {
	if (BookPage.pageIdx <= 0) {
		return;
	}
	BookPage.pageIdx--;
}