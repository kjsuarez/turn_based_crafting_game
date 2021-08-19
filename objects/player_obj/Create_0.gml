/// @description Insert description here
// Inherit the parent event - turn taker
event_inherited();

facing = [0, 1];
facing_sprite_index = 0;

inventory = instance_create_layer(0,0, "meta_layer", inventory_obj);//ds_list_create();
equiped_item = false;

hp_bar = instance_create_layer(x,y - (sprite_height/2),"hud_layer",hp_bar_obj)
with(hp_bar){
	hp = 3;
	image_xscale = hp;
}
