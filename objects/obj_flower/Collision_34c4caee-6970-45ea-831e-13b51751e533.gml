/// @description Insert description here
// You can write your code in this editor

hp -= 1;
image_index +=1;

if (hp == 0) {
	if (bottomFlowerMgrRef != noone) {
		bottomFlowerMgrRef.bottomFlowerCount -= 1;
		show_debug_message(bottomFlowerMgrRef.bottomFlowerCount);
		
		if (bottomFlowerMgrRef.bottomFlowerCount <= 5 && !instance_exists(obj_flea)) {
			show_debug_message("flea spawned");
			randX = (irandom_range(0, 29) * 32) + 16;
			var fleaRef = instance_create_layer(randX, 0+16, layer_get_id("instances") , obj_flea);
			fleaRef.flowerMgrRef = flowerMgrRef;
			
		}
	}
	if (restored) {
		score += 5;
	} else {
		score += 1;
	}
	
	instance_destroy();
}