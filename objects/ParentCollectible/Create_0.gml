playerClose = false;

// Button
button = instance_create_layer(x, y, "Instances", NpcButton);
button.visible = false;
button.image_xscale = 0.5;
button.image_yscale = 0.5;
button.x = self.x + 15;
button.depth = -1000;

// Overide this
add = function() {
		
}

collect = function () {
	array_push(CollectibleHandler.collectedIds, id);
	instance_deactivate_object(self);
	instance_deactivate_object(button);
	add();
	audio_play_sound(CollectItemSound, 1, false);
}