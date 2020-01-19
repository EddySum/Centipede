/// @description Insert description here
// You can write your code in this editor


if (dimondMgr.hp <= 0) {
	flowerMgr.hp = 5;
	lvl++;
	flowerMgr.lvl = lvl;
	dimondMgr.lvl = lvl;
	dimondMgr.createDiamond = true;
	scorpionRef.moveMultiplier += .15;
	butterRef.moveMultiplier += .35;
	playerRef.moveMultiplier += .2;
	
	if (playerRefTwo != noone) {
		playerRefTwo.moveMultiplier += .2;
	}
}

var anyKey = keyboard_check(vk_anykey);
if (!instance_exists(obj_player) && anyKey) {
	room_restart();
}

