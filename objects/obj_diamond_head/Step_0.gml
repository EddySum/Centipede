/// @description Insert description here
// You can write your code in this editor



var newX = x + (xDirection * moveMultiplier);

if (place_meeting(newX, y, obj_flower)) {
	var ref = instance_place(x+(32*xDirection), y, obj_flower)
	if (ref != noone && ref.pois) {
		moveMultiplier += 1;
		moveToPlayerArea = true;
	}
}

if (moveToPlayerArea = true) {
	var newY = y + 32;
	if (newY < room_height - (6*32)) {
		y = newY;
	}
} else if (newX < rightBound && newX > leftBound && place_free(newX, y)) {
	x = newX;
} else {
	xDirection = xDirection * -1;
	var newY = y + (32* yDirection);
	
	if (newY > topBound && newY < bottomBound ) {
		y = newY;
		createNew = true;
	} else {
		var newInstanceX = rightBound;
		if (xDirection == -1) {
				newInstanceX = leftBound;
			}
		if (place_free(newInstanceX, y) && createNew == true) {
			var ref = instance_create_layer(newInstanceX, y, layer_get_id("instances") , obj_diamond_head);
			ref.xDirection = xDirection * -1;
			ref.dimondMgr = dimondMgr;
			dimondMgr.hp++;
			ref.createNew = false;	
		}
		
		xDirection = xDirection * -1;
		yDirection = yDirection * -1;
		topBound = 100;
	}
}




