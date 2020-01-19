/// @description Insert description here
// You can write your code in this editor

speedIncreaseMulti = .05;

diamondTotal = 12;
hp = diamondTotal;

createDiamond = false;
lvl = 1;

randomize();


var needsTailRef = 0;
for (var i = 0; i < diamondTotal; i++) {
	var obj = obj_diamond
	if (i == 0) {
		obj = obj_diamond_head;
		needsTailRef = instance_create_layer((room_width/2)-16+(32*i), 16, layer_get_id("instances") , obj);
		needsTailRef.dimondMgr = self;
		continue;
	}
	
	var newDimond = instance_create_layer((room_width/2)-16+(32*i), 16, layer_get_id("instances") , obj);
	newDimond.dimondMgr = self;
	needsTailRef.nextDimond = newDimond;
	needsTailRef = newDimond
}