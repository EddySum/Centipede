/// @description Insert description here
// You can write your code in this editor

if (timer-- < 0 && !active) {
	active = true;
	x = 0+16;
	if (irandom_range(0, 1) == 1) {
		x = room_width-16;
		xDirection = -1;
	};
	y = room_height - (6*32);
}


if (active) {
	var newX = x + (xDirection * moveMultiplier * xExists);
	var newY = y + (yDirection * moveMultiplier);


	if (newY > topBound && newY < bottomBound) {
		x = newX;
		y = newY;
	} else {
		yDirection *= -1; 
		xExists = irandom_range(0, 1);
	}
}