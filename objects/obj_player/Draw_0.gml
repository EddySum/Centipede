/// @description Insert description here
// You can write your code in this editor

yDraw = 16;

if (playerTwo) {
	yDraw = 48;
}


for (var i = 0; i < hp; i++) {
	draw_sprite(spr_heart, 0, 0 + 48 + (32*i), yDraw);
}

draw_self();