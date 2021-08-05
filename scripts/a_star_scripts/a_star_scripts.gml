function get_astar_grid_for_room(){
	var cell_length = 16;
	var astar_grid = mp_grid_create(0, 0, room_width / cell_length, room_height /cell_length, cell_length, cell_length);
	return astar_grid;
}

function set_collision_cells(map_grid){
	var lay_id = layer_get_id("boundry_tiles_layer");
	var tile_map_id = layer_tilemap_get_id(lay_id);
	// measured in cells not pixels!
	for (var i = 0; i < tilemap_get_width(tile_map_id); i++;){
	    for (var j = 0; j < tilemap_get_height(tile_map_id); j++;)
	        {
	        var tile_data = tilemap_get(tile_map_id, i, j);
	        if !tile_get_empty(tile_data){
	           mp_grid_add_cell(map_grid, i, j);
	        }
	    }
	}
}