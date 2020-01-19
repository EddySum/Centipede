/// @description Insert description here
// You can write your code in this editor


if (createDiamond == true) {
	createDiamond = false;
	hp = 12;
	diamondTotal = hp - (lvl-1);
	var extraHeads = (lvl - 1);
	
	var needsTailRef = 0;
	for (var i = 0; i < diamondTotal; i++) {
		var obj = obj_diamond
		if (i == 0) {
			obj = obj_diamond_head;
			needsTailRef = instance_create_layer((room_width/2)-16+(32*i), 16, layer_get_id("instances") , obj);
			needsTailRef.dimondMgr = self;
			needsTailRef.moveMultiplier += (speedIncreaseMulti)*(lvl-1);
			continue;
		}
	
		var newDimond = instance_create_layer((room_width/2)-16+(32*i), 16, layer_get_id("instances") , obj);
		newDimond.dimondMgr = self;
		needsTailRef.nextDimond = newDimond;
		needsTailRef = newDimond
		needsTailRef.moveMultiplier += (speedIncreaseMulti)*(lvl-1);
	}
	
	
	for (var i = 0; i < extraHeads; i++) {
		var rand = irandom_range(0, 1);
		if (rand == 0) {
			needsTailRef = instance_create_layer(0+16+(64*i), 16, layer_get_id("instances") , obj_diamond_head);
			needsTailRef.dimondMgr = self;
			needsTailRef.xDirection = 1;
			needsTailRef.moveMultiplier += (speedIncreaseMulti)*(lvl-1);
		} else {
			needsTailRef = instance_create_layer((room_width)-16-(64*i), 16, layer_get_id("instances") , obj_diamond_head);
			needsTailRef.dimondMgr = self;
			needsTailRef.moveMultiplier += (speedIncreaseMulti)*(lvl-1);
		}
		
	}
	
}