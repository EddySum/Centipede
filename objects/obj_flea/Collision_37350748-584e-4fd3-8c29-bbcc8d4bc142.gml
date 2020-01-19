/// @description Insert description here
// You can write your code in this editor


if (hp == 2) {
	show_debug_message("reduce hp");
	hp-=1;
	moveMulti *= 2;
	
} else {
	hp-=1;
	score += 200;
	instance_destroy();
}



instance_destroy(other);




