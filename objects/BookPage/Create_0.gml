//pageSprites = [BookLenseSprite, BookNewton, BookPH, BookPH2];
pageSpriteMap = [
	{
		name: "lens",
		sprite: BookLenses,
		unlocked: false,
	},
	{
		name: "lens",
		sprite: BookPulley,
		unlocked: false,
	},
	{
		name: "lens",
		sprite: BookRemedies,
		unlocked: false,
	},
	{
		name: "lens",
		sprite: BookNewton,
		unlocked: false,
	},
]
pageIdx = 0;

function getUnlockedPages() {
	var unlockedPages = [];
	for (var i = 0; i < array_length(pageSpriteMap); i++) {
		if (pageSpriteMap[i].unlocked) {
			array_push(unlockedPages, pageSpriteMap[i].sprite);
		}
	}	
	return unlockedPages;
}

vw = camera_get_view_width(view_camera[0]);
vh = camera_get_view_height(view_camera[0]);

image_xscale = 1.2;
image_yscale = 1.2;

x = vw;
y = vh;