function tile_column_row_to_position(row, column){
	return [(row * 16) + 8, (column * 16) + 8];
}

function center_of_tile_at_position(_x,_y){
	var lay_id = layer_get_id("base_tiles_layer");
	var map_id = layer_tilemap_get_id(lay_id);
	var tile_row = tilemap_get_cell_x_at_pixel(map_id, _x, _y);
	var tile_column = tilemap_get_cell_y_at_pixel(map_id, _x, _y);

	return tile_column_row_to_position(tile_row, tile_column);
}

function adjusted_position_by_x_tiles(x_tiles_over, y_tiles_over, current_x, current_y){
	var lay_id = layer_get_id("base_tiles_layer");
	var map_id = layer_tilemap_get_id(lay_id);
	var current_tile_row = tilemap_get_cell_x_at_pixel(map_id, current_x, current_y);
	var current_tile_column = tilemap_get_cell_y_at_pixel(map_id, current_x, current_y);
	
	var new_tile_row = current_tile_row + x_tiles_over;
	var new_tile_column = current_tile_column + y_tiles_over;
	
	var new_tile_pixel_position = tile_column_row_to_position(new_tile_row, new_tile_column);
	return new_tile_pixel_position
}

function turn_collision(inst_1, inst_2){
	var inst_1_current_tile = center_of_tile_at_position(inst_1.x, inst_1.y);
	var inst_1_target_tile = center_of_tile_at_position(inst_1.target_position[0], inst_1.target_position[1]);
	
	var inst_2_current_tile = center_of_tile_at_position(inst_2.x, inst_2.y);
	var inst_2_target_tile = center_of_tile_at_position(inst_2.target_position[0], inst_2.target_position[1]);

	return array_equals(inst_1_target_tile, inst_2_target_tile) || (array_equals(inst_1_target_tile, inst_2_current_tile) && array_equals(inst_2_target_tile, inst_1_current_tile))
	
}

function actors_that_intend_to_occupy_this_tile(tile_coor){
	var instances = ds_list_create()
	with(actor_obj){
		if(array_equals(target_position, tile_coor)){
			ds_list_add(instances, self)
		}
	}
	return instances
}

function max_room_column(){
	
}