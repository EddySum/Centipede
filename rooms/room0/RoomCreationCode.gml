



lvlMgr = instance_create_layer(-50, -50, layer_get_id("instances") , obj_lvlMgr);
lvlMgr.flowerMgr = instance_create_layer(-50, -50, layer_get_id("instances") , obj_flowerMgr);
lvlMgr.dimondMgr = instance_create_layer(-50, -50, layer_get_id("instances") , obj_diamondMgr);

butter = instance_create_layer(-100, -100, layer_get_id("instances") , obj_butterfly);
scorp = instance_create_layer(-200, -200, layer_get_id("instances") , obj_scorpion);
music = instance_create_layer(-300, -300, layer_get_id("instances") , obj_music);

player = instance_create_layer(512, 912, layer_get_id("instances") , obj_player);

if (global.playerCount == 2) {
	playerTwo = instance_create_layer(512, 840, layer_get_id("instances") , obj_player);
	playerTwo.playerTwo = true;
	lvlMgr.playerRefTwo  = playerTwo;
	lvlMgr.playerCount = 2;
}


lvlMgr.scorpionRef = scorp;
lvlMgr.butterRef = butter;
lvlMgr.playerRef = player;

randFireY = (irandom_range(0, 29) * 32) + 16;
instance_create_layer(room_width-16, randFireY, layer_get_id("instances") , obj_fire);


music.butter = butter;
music.scorp = scorp;


