/// @description Insert description here
// You can write your code in this editor

active = false;
timer =  irandom_range(5, 20) * 15;

image_speed = 2;
moveMultiplier = 2;

yDirection = 1;
xDirection = 1;
xExists = irandom_range(0, 1);



topBound = room_height - (6*32);
bottomBound = room_height-(sprite_width/2)+16;
rightBound = room_width-(sprite_width/2);
leftBound = 0+(sprite_width/2);

