/// @description Insert description here
// You can write your code in this editor

if (image_index > image_number - 1) {
	image_speed = 0;
	if (hp < 1) {
		//instance_create_layer(0, 0, layer_get_id("instances") , obj_endGame);
		instance_destroy();
		instance_destroy(playerRef);
	} else {
		var saveX = x;
		var saveY = y;
		x = -1500;
		y = -1500;
		playerRef.god = true;
		playerRef.x = saveX;
		playerRef.y = saveY;
		image_speed = 0;
		image_index = 0;
	}
}