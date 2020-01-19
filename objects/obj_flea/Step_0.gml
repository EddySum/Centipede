/// @description Insert description here
// You can write your code in this editor


var newY = y + (yDirection * moveMulti);
y = newY;


randNum = (irandom_range(0, 50));

if (randNum == 2) {
	modVal = y % 32;

	var flowerY = 0;
	if( modVal )
	{
	  if( modVal > 16 )
	    flowerY = y + 32 - modVal;
	  else
	    flowerY = y - modVal;
	}
	
	if (position_empty(x,flowerY-48)) {
		instance_create_layer(x, flowerY-16, layer_get_id("instances") , obj_flower);
	};
}

if (flowerMgrRef.lvl > lvl) {
	lvl++;
	moveMulti +=  .1;
}
