/// @description Insert description here

tile_coor = center_of_tile_at_position(mouse_x, mouse_y);
var tile_x_position = tile_coor[0];
var tile_y_position = tile_coor[1];

draw_set_color(c_red);

draw_circle(tile_x_position,tile_y_position,3,false);