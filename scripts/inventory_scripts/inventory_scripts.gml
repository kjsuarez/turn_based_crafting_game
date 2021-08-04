function add_to_ingredients(ingredient_class){
	var x_pos = inventory.ingredients_list_start_coor[0];
	var y_pos = inventory.ingredients_list_start_coor[1] * (ds_list_size(inventory.ingredients) + 1);
	//var ingredient_inst = instance_create_layer(x_pos,y_pos, "menu_items_layer", ingredient_class)
	var other_ingredient_inst = instance_create_layer(x_pos,y_pos, "menu_items_layer", ingredient_class);
	
	//ds_list_add(inventory.ingredients, ingredient_inst);
	
	add_to_complex_ingredients_hash(other_ingredient_inst)
}

function add_to_complex_ingredients_hash(ingredient_inst){
	var inventory = player_obj.inventory;
	var ingredient_hash = player_obj.inventory.complex_ingredients;
	var ingredient_keys = ds_map_keys_to_array(ingredient_hash)
	
	var ingredient_name = object_get_name(ingredient_inst.object_index);
	var ingredient_of_this_type_arry = inventory.complex_ingredients[? ingredient_name]
	
	if(ingredient_of_this_type_arry == undefined){
		var ingredient_keys = ds_map_keys_to_array(inventory.complex_ingredients)
		
		var length_of_ingredient_keys = (ingredient_keys == undefined ? 0 : array_length(ingredient_keys));
		
		var new_ingredient_arry = ds_list_create();
				
		ds_list_add(new_ingredient_arry, ingredient_inst)
		ds_map_add_list(inventory.complex_ingredients, ingredient_name, new_ingredient_arry);
	} else {
		var ingredient_keys = ds_map_keys_to_array(inventory.complex_ingredients)
		var length_of_ingredient_keys = array_length(ingredient_keys);
		var ingredient_name_index = array_index_of_element(ingredient_keys, ingredient_name);
		var index_or_zero = (ingredient_name_index == undefined ? 0 : ingredient_name_index);
		
		ds_list_add(ingredient_of_this_type_arry, ingredient_inst)				
	}
	
	arrange_ingredients();
}

function remove_from_complex_ingredients_hash(ingredient_inst){
	var inventory = player_obj.inventory;
	var ingredient_hash = player_obj.inventory.complex_ingredients;
	var ingredient_keys = ds_map_keys_to_array(ingredient_hash)
	
	var ingredient_name = object_get_name(ingredient_inst.object_index);
	var ingredient_of_this_type_arry = inventory.complex_ingredients[? ingredient_name]
	
	ds_list_remove_instance(ingredient_of_this_type_arry, ingredient_inst);
	arrange_ingredients();
}

function arrange_ingredients(){
	var inventory = player_obj.inventory;
	var ingredient_hash = player_obj.inventory.complex_ingredients;
	var ingredient_keys = ds_map_keys_to_array(ingredient_hash)
	
	for (var i = 0; i < array_length(ingredient_keys); i += 1){		
		var appropriate_x = inventory.ingredients_list_start_coor[0];
		var appropriate_y = inventory.ingredients_list_start_coor[1] * (i + 1);
		var ingredient_name = ingredient_keys[i];
		var ingredient_list = ingredient_hash[? ingredient_name];
		for (var j = 0; j < ds_list_size(ingredient_list); j += 1){
			var ingredient_inst = ingredient_list[| j];
			with(ingredient_inst){
				x = appropriate_x;				
				y = appropriate_y;
				starting_position = [appropriate_x, appropriate_y]
			}
		}
	}
}