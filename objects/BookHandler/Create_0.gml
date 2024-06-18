bookDisplayed = false;

closeHovering = false;
leftArrowHovering = false;
rightArrowHovering = false

bookButton= instance_create_layer(50, 140, "GameHandlers", BookButton);

bookPage = instance_create_layer(50, 140, "GameHandlers", BookPage);
closeButton = instance_create_layer(x, y, "GameHandlers", BookCloseButton);
leftButton = instance_create_layer(x, y, "GameHandlers", BookLeftButton);
rightButton = instance_create_layer(x, y, "GameHandlers", BookRightButton);

instances = [bookPage, closeButton, rightButton, leftButton];

for (var i = 0; i < array_length(instances); i++) {
	instances[i].visible = false;
	instances[i].persistent = true;
}
	

bookPage.depth = 5000;
closeButton.depth = 4000;
rightButton.depth = 4000;
leftButton.depth = 4000;

function nextPage() {
	if (BookPage.pageIdx >= array_length(BookPage.getUnlockedPages()) - 1) {
		return;
	}
		
	BookPage.pageIdx++;
	
}

function prevPage() {
	if (BookPage.pageIdx <= 0) {
		return;
	}
	BookPage.pageIdx--;
}