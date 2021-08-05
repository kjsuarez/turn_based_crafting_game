/// @description Insert description here
state = "neutral";
previous_state = "neutral";
navigation_grid = get_astar_grid_for_room();
set_collision_cells(navigation_grid);

var lay_id = layer_get_id("boundry_tiles_layer");
var tile_map_id = layer_tilemap_get_id(lay_id);
cell_length = tilemap_get_tile_width(tile_map_id);

