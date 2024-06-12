pageSprites = [BookLenseSprite];

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
		
}

function prevPage() {
	
}