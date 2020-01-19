/// @description Insert description here
// You can write your code in this editor


audio_play_sound(se_impact, 60, false);
if (nextDimond != noone && instance_exists(nextDimond)) {
	nextDimond.makeHead = true;
}

instance_change(obj_flower, true);
dimondMgr.hp--;

score += 100;


