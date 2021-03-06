function add_item_from_craft_table(){
	var first_ingredient = inventory_obj.craft_table_1.related_ingredient_inst;
	var second_ingredient = inventory_obj.craft_table_2.related_ingredient_inst;
	
	var x_pos = inventory_obj.items_list_start_coor[0];
	var y_pos = inventory_obj.items_list_start_coor[1] * (ds_list_size(inventory_obj.items) + 1);
	var item_inst = instance_create_layer(x_pos,y_pos, "menu_items_layer", usable_item_obj)
	
	with(item_inst){		
		sprite_index = player_front_spr;
		visible = true;
		sprite_index = first_ingredient.item_sprite;
		
		if(first_ingredient){
			player_effect = first_ingredient.player_effect;
		}
		if(second_ingredient){
			spawn_location = second_ingredient.spawn_location;
			spawn_behavior = second_ingredient.spawn_behavior;
		}
	}
	
	if(first_ingredient){
		ds_list_remove_instance(inventory_obj.ingredients, first_ingredient);
		disentangle_ingredient_from_holder(first_ingredient);
		with(first_ingredient){
			instance_destroy();
		}
	}
	
	if(second_ingredient){
		ds_list_remove_instance(inventory_obj.ingredients, second_ingredient);
		disentangle_ingredient_from_holder(second_ingredient);
		with(second_ingredient){
			instance_destroy();
		}
	}
	
	update_inventory_state();
	
	ds_list_add(inventory_obj.items, item_inst);
	show_debug_message("item inventory length: " + string(ds_list_size(inventory_obj.items)))
	
	return item_inst;
}