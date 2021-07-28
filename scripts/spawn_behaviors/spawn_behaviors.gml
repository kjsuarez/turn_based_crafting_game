function cell_in_front_of_player(){
	var player_facing = player_obj.facing
	var player_x_y = [player_obj.x, player_obj.y]
	var new_position = adjusted_position_by_x_tiles(player_facing[0], player_facing[1], player_x_y[0], player_x_y[1]);
	
	return new_position;
}

function move_ahead_one_step(){
	var new_position = adjusted_position_by_x_tiles(direction_coor[0], direction_coor[1], x, y);
	target_position[0] = new_position[0];
	target_position[1] = new_position[1];
}


function do_nothing(){

}

function spawn_dust_cloud(){
	var spawn_script = asset_get_index(spawn_location);
	var spawn_coor = script_execute(spawn_script);
	var actor_inst = instance_create_layer(spawn_coor[0], spawn_coor[1], "instance_layer", dust_cloud_obj);
	with(actor_inst){
		direction_coor = player_obj.facing;
		decisioin_script = other.spawn_behavior;
		impact_effect = other.impact_effect
	}
}
