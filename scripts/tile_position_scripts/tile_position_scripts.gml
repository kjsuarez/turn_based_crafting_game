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