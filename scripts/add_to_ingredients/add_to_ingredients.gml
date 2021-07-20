// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function add_to_ingredients(ingredient){
	var x_pos = inventory.ingredients_list_start_coor[0];
	var y_pos = inventory.ingredients_list_start_coor[1] * (ds_list_size(inventory.ingredients) + 1);
	var ingredient_inst = instance_create_layer(x_pos,y_pos, "menu_items_layer", ingredient)
	
	ds_list_add(inventory.ingredients, ingredient_inst);
	show_debug_message("inventory length: " + string(ds_list_size(inventory.ingredients)))
	
}