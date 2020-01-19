/// @description Insert description here
// You can write your code in this editor

if (!helpScreen) {
	key_up = keyboard_check_pressed(vk_up);
	key_down = keyboard_check_pressed(vk_down);
	enter = keyboard_check_pressed(vk_enter);

	if (key_up) {
		current--;
	} else if (key_down) {
		current++;
	}

	if (current < 0) {
		current = 0;
	} else if (current > 6) {
		current = 6;
	}

	if (enter) {
		if (current <= 1) {
			global.hp = diff;
			global.playerCount = current + 1;
			room_goto_next();
		}
		if (current == 2) {
			game_end();
		} else if (current = 6) {
			helpScreen = true;
		} else {
			diff = current;
		}
	
	}
} else {
	if keyboard_check(vk_escape) {
		helpScreen = false;
	}
}