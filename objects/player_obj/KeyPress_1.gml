if(manager_obj.state == "neutral"){

	new_position = [x,y]
	var intended_action = "nothing";

	switch (keyboard_key){
		case vk_left:
		case ord("A"):
			intended_action = "move";
			facing = [-1, 0];
		    var new_position = adjusted_position_by_x_tiles(facing[0], facing[1], x, y);
		    break;
		case vk_right:
		case ord("D"):
			intended_action = "move";
			facing = [1, 0];
		    var new_position = adjusted_position_by_x_tiles(facing[0], facing[1], x, y);
		    break;
		case vk_up:
		case ord("W"):
			intended_action = "move";
			facing = [0, -1];
		    var new_position = adjusted_position_by_x_tiles(facing[0], facing[1], x, y);
		    break;
		case vk_down:
		case ord("S"):
			intended_action = "move";
			facing = [0, 1];
		    var new_position = adjusted_position_by_x_tiles(facing[0], facing[1], x, y);
		    break;
		case ord("Q"):
			var item_inventory_length = ds_list_size(inventory_obj.items);
			if(item_inventory_length > 1){
				equip_previous_item();
			}
			break;
		case ord("E"):
			var item_inventory_length = ds_list_size(inventory_obj.items);
			if(item_inventory_length > 1){
				equip_next_item();
			}
			break;
		case vk_space:
			intended_action = "use_item";
			break;
		case vk_tab:
			//open_inventory();
			break;
		default: new_position = [x,y];
	}

	var lay_id = layer_get_id("base_tiles_layer");
	var map_id = layer_tilemap_get_id(lay_id);
	var new_tile_row = tilemap_get_cell_x_at_pixel(map_id, new_position[0], new_position[1]);
	var new_tile_column = tilemap_get_cell_y_at_pixel(map_id, new_position[0], new_position[1]);
	if(new_tile_row == -1 || new_tile_column ==  -1 ){
		new_position = [x,y];
	}

	switch (intended_action){
		case "use_item":

			if(equiped_item != false){
				with(equiped_item){
					var item_action = asset_get_index(player_effect);
					script_execute(item_action);
				}
			}
			advance_turn();
		
			break;
		case "move":
			var lay_id = layer_get_id("base_tiles_layer");
			var map_id = layer_tilemap_get_id(lay_id);
			var new_tile_row = tilemap_get_cell_x_at_pixel(map_id, new_position[0], new_position[1]);
			var new_tile_column = tilemap_get_cell_y_at_pixel(map_id, new_position[0], new_position[1]);

			var collision_layer = layer_get_id("boundry_tiles_layer");
			var collision_tiles = layer_tilemap_get_id(collision_layer);
			var collision_tile_index = tilemap_get_at_pixel(collision_tiles, new_position[0], new_position[1]);

			show_debug_message("tile index: " + string(collision_tile_index))
			
			var actors_in_this_space = actors_that_intend_to_occupy_this_tile(new_position)
			
			if(
				(new_tile_row == -1 || new_tile_column ==  -1 ) || 
				(collision_tile_index == 1) ||
				ds_list_size(actors_in_this_space) > 0
			){
				new_position = [x,y];
			}

			if(place_meeting(new_position[0], new_position[1], resource_obj)){
				//harvest ingredient
				var resource_inst = instance_nearest(new_position[0], new_position[1], resource_obj);
				add_to_ingredients(resource_inst.ingredient);
				instance_destroy(resource_inst);
			}


			target_position[0] = new_position[0];
			target_position[1] = new_position[1];

			advance_turn();
		
			break;

		default:

	}

}
