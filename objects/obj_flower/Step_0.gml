/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x, y, obj_scorpion) && !pois) {
	pois = true;
	image_index+=5;
	show_debug_message("pois activated");
}

if (flowerMgrRef && flowerMgrRef.lvl > lvl) {
	if (pois || hp < 4) {
		restored = true;
	}
	
	lvl++;
	hp = 4;
	pois = false;
	image_index = 0;
}

