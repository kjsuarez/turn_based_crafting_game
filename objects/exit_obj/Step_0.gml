/// @description Insert description here

var player_tile = center_of_tile_at_position(player_obj.x, player_obj.y)
var self_tile = center_of_tile_at_position(x, y)

if(array_equals(player_tile, self_tile)){
	room_goto(transition_example_room)
}