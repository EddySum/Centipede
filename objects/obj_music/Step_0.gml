/// @description Insert description here
// You can write your code in this editor

if (!music) {
	if (scorp.active || butter.active || instance_exists(obj_flea)) {
		music = true;
		audio_play_sound(bck_butterfly, 70, true);
	}
}