/// @description Insert description here

show_debug_message("mouse relaesed");
var trait_holder_inst = instance_place(x, y, trait_holder_obj);
show_debug_message("trait holder: "+string( trait_holder_inst))
if(trait_holder_inst != noone && grabbed){
	grabbed = false;
    placed = true;
	related_setter = trait_holder_inst;
	trait_holder_inst.related_ingredient_inst = self;
	update_inventory_state();
	x = trait_holder_inst.x
	y = trait_holder_inst.y
} else if(grabbed){
	disentangle_ingredient_from_holder(self);
	update_inventory_state();
	
	show_debug_message("button should be grey");
	grabbed = false;
	x = starting_position[0];
	y = starting_position[1];
}

