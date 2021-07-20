// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function add_item_from_craft_table(){
	var first_ingredient = inventory_obj.craft_table_1.related_ingredient_inst;
	
	var x_pos = inventory_obj.items_list_start_coor[0];
	var y_pos = inventory_obj.items_list_start_coor[1] * (ds_list_size(inventory_obj.items) + 1);
	var item_inst = instance_create_layer(x_pos,y_pos, "menu_items_layer", usable_item_obj)
	with(item_inst){
		damage = first_ingredient.damage;
		effected_tiles = first_ingredient.effected_tiles;
		sprite_index = player_front_spr;
		visible = true;
		sprite_index = first_ingredient.item_sprite;
	}
	
	ds_list_remove_instance(inventory_obj.ingredients, first_ingredient);
	with(first_ingredient){
		instance_destroy();
	}
	
	ds_list_add(inventory_obj.items, item_inst);
	show_debug_message("item inventory length: " + string(ds_list_size(inventory_obj.items)))
	
	return item_inst;
}