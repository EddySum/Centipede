/// @description Insert description here
// You can write your code in this editor

var newY = y + (yDirection * moveMultiplier);

y = newY;

if (y < self.topBound) {
	instance_destroy();
}