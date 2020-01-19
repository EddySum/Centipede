/// @description Insert description here
// You can write your code in this editor

flowerTotal = 30 * 30 * .1;
bottomFlowerCount = 0;

lvl = 1;

for (var i = 0; i < flowerTotal; i++) {
	randX = (irandom_range(0, 29) * 32) + 16;
	randY = (irandom_range(2, 28) * 32) - 16;
	
	
	
	if (place_free(randX, randY)) {
		flower = instance_create_layer(randX, randY, layer_get_id("instances") , obj_flower);
		flower.flowerMgrRef = self;
		if (randY > room_height - (6*32)) {
			flower.bottomFlowerMgrRef = self;
			bottomFlowerCount++;
		}
	} else {
		i--;
	}
}

