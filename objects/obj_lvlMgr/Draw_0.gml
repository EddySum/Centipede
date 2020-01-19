/// @description Insert description here
// You can write your code in this editor


draw_set_font (std_font);

draw_set_colour(c_blue);
draw_text((room_width/2)-200, 0, "Score:");
draw_text((room_width/2) -100, 0, score);

draw_set_font (fnt_title);

if (!instance_exists(obj_player)) {
	draw_text((room_width/2)-100, room_height/2, "Game Over");
	draw_text((room_width/2)-100, (room_height/2)+128, "Score:");
	draw_text((room_width/2), (room_height/2)+128, score);
	draw_text((room_width/2)-100, (room_height/2)+256, "Press any key to restart");
}