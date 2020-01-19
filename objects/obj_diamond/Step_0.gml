/// @description Insert description here
// You can write your code in this editor



var newX = x + (xDirection * moveMultiplier);

if (place_meeting(newX, y, obj_flower)) {
	var ref = instance_place(x+(32*xDirection), y, obj_flower)
	if (ref != noone && ref.pois) {
		moveMultiplier += 1;
		y = room_height - (6*32);
	}
}


if (newX < rightBound && newX > leftBound && place_free(newX, y)) {
	x = newX;
} else {
	xDirection = xDirection * -1;
	var newY = y + (32* yDirection);
	
	if (newY > topBound && newY < bottomBound ) {
		y = newY;
	} else {
		xDirection = xDirection * -1;
		yDirection = yDirection * -1;
		topBound = 100;
	}
}

if (makeHead == true) {
	var newHead = instance_create_layer(x, y, layer_get_id("instances") , obj_diamond_head);
	newHead.nextDimond = nextDimond;
	newHead.dimondMgr = dimondMgr;
	newHead.xDirection = xDirection;
	instance_destroy();
}







