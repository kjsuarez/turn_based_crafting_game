new_position = [x,y]
switch (keyboard_key){
	case vk_left:
	case ord("A"):
	    var new_position = adjusted_position_by_x_tiles(-1, 0, x, y);
	    break;
	case vk_right:
	case ord("D"):
	    var new_position = adjusted_position_by_x_tiles(1, 0, x, y);
	    break;
	case vk_up:
	case ord("W"):
	    var new_position = adjusted_position_by_x_tiles(0, -1, x, y);
	    break;
	case vk_down:
	case ord("S"):
	    var new_position = adjusted_position_by_x_tiles(0, 1, x, y);
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

if(place_meeting(new_position[0], new_position[1], resource_obj)){
	//harvest ingredient
	var resource_inst = instance_nearest(new_position[0], new_position[1], resource_obj);
	add_to_ingredients(resource_inst.ingredient);
	instance_destroy(resource_inst);
}

target_position[0] = new_position[0];
target_position[1] = new_position[1];

advance_turn();


