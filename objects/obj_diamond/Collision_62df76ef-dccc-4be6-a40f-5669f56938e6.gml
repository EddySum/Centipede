/// @description Insert description here
// You can write your code in this editor

if (nextDimond != noone && instance_exists(nextDimond)) {
	nextDimond.makeHead = true; 
}
instance_change(obj_flower, true);
dimondMgr.hp--;

show_debug_message("status");
show_debug_message(dimondMgr.hp);

score += 10;