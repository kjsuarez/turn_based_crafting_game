// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function one_cardinal_tile_over(){
 var move_choice = irandom_range(0,3);
 var x_delta = 0;
 var y_delta = 0;
 switch (move_choice){
	case 0:
		//up
		x_delta = 0;
		y_delta = -1;
		break;
	case 1:
		//left
		x_delta = -1;
		y_delta = 0;
		break;
	case 2:
		//down
		x_delta = 0;
		y_delta = 1;
		break;
	case 3:
		//right
		x_delta = 1;
		y_delta = 0;
		break;
	default:
		break;
 }
 return adjusted_position_by_x_tiles(x_delta, y_delta, x, y);
}

function cell_in_front_of_player(){
	var player_facing = player_obj.facing
	var player_x_y = [player_obj.x, player_obj.y]
	var new_position = adjusted_position_by_x_tiles(player_facing[0], player_facing[1], player_x_y[0], player_x_y[1]);
	
	return new_position;
}

function move_ahead_one_step_forever(){
	ttl = -1;
	standard_actor_behavior();
	var new_position = adjusted_position_by_x_tiles(direction_coor[0], direction_coor[1], x, y);
	target_position[0] = new_position[0];
	target_position[1] = new_position[1];
}


function do_nothing(){

}