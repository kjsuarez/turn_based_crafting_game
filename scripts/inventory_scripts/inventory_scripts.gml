function arrange_ingredients(){
	var inventory = player_obj.inventory;
	var ingredient_hash = player_obj.inventory.complex_ingredients;
	var ingredient_keys = ds_map_keys_to_array(ingredient_hash)
	
	for (var i = 0; i < array_length(ingredient_keys); i += 1){		
		var appropriate_x = inventory.ingredients_list_start_coor[0] + 64;
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