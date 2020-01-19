/// @description Insert description here
// You can write your code in this editor


if (!helpScreen) {
	draw_set_font(fnt_title);
	draw_set_colour(c_blue);

	draw_text(room_width/2, room_height/2, "Weclome to Dimond");

	for (var i = 0; i < array_length_1d(button); i++) {
		draw_set_colour(c_white);
		if (diff = i) {
			draw_set_color(c_red);	
		}
		if (i == current) {
			draw_set_colour(c_purple);
		}
		draw_text(room_width/2, (room_height/2)+32+(32*i), button[i]);
	}
} else {
	draw_set_font(fnt_title);
	draw_set_colour(c_blue);
	draw_text(60, 200, "Help");
	draw_set_colour(c_white);
	
	draw_set_font(std_font);
	draw_text(60, 280, "Player 1: \n Movement : Arrow Keys \n Fire: SpaceBar\n");
	draw_text(60, 360, "Player 2: \n Movement : WASD \n Fire: F \n");
	
	draw_text(60, 450, "Flea: \n Spawn : 5 or less flowers in player arena \n Movement: Downward \n Score: +200");
	draw_text(60, 550, "Scorpion: \n Spawn : 10 to 30 Second interval of Game Start \n Movement: Horizantal in one direction depending on random spawn \n Score: +1000");
	draw_text(60, 650, "Butterfly: \n Spawn : 5 to 10 Second interval of Game Start  \n Movement: Moves either vertically or diagnoally. Diagonal direction depends on spawn \n Score: +300-900 based on distance");
	draw_text(60, 750, "FireMongo: \n Spawn : Immediate \n Movement: Horizontally to the left. Causes flowers to catch on fire and fall downward \n Score: +1000 for monster/+100 for fire flowers");
	
	draw_set_font(fnt_title);
	draw_set_colour(c_blue);
	draw_text(60, 870, "Press escape key To Exit");
	
}

