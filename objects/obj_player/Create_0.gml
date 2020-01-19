/// @description Insert description here
// You can write your code in this editor

playerTwo = false;

god = false;

moveMultiplier = 4;

topBound = room_height - (6*32);
bottomBound = room_height-(sprite_width/2);
rightBound = room_width-(sprite_width/2);
leftBound = 0+(sprite_width/2);


bulletRef = instance_create_layer(x, -10, layer_get_id("instances") , obj_bullet);
instance_destroy(bulletRef);

hp = global.hp;

explosion = instance_create_layer(-1000, -1000, layer_get_id("instances") , obj_explosion);
explosion.hp = hp;
explosion.playerRef = self;
