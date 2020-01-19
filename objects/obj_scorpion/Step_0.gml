/// @description Insert description here
// You can write your code in this editor

if (timer-- < 0 && !active) {
	active = true;
	
	
	y = (irandom_range(0, 22) * 32) + 16;
	x = 0;
	
	if (irandom_range(0, 1) == 1) {
		x = room_width-16;
		xDirection = -1;
		image_xscale *= -1;
	};
	
}

if (active) {
	var newX = x + (xDirection * moveMulti);

	x = newX;
}