/// @description Insert description here
// You can write your code in this editor



key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);
key_space = keyboard_check(vk_space);

if (playerTwo) {
	key_left = keyboard_check(ord("A"));
	key_right = keyboard_check(ord("D"));
	key_up = keyboard_check(ord("W"));
	key_down = keyboard_check(ord("S"));
	key_space = keyboard_check(ord("F"));
} 



var xMove = key_right - key_left;
var yMove = key_down - key_up;

var newX = x + (xMove * moveMultiplier);
var newY = y + (yMove * moveMultiplier);

if (newY > topBound && newY < bottomBound && place_free(x, newY)) {
	y = newY;
}

if (newX < rightBound && newX > leftBound && place_free(newX, y)) {
	x = newX;
}



if (key_space && !instance_exists(bulletRef)) {
	audio_play_sound(se_bullet, 50, false);
	bulletRef = instance_create_layer(x, y-34, layer_get_id("instances") , obj_bullet);
	bulletRef.moveMultiplier = moveMultiplier * 3;
}






