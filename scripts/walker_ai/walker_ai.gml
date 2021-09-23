// called from enemy's context
function walker_next_position(){
	standard_actor_behavior();
	var new_position = adjusted_position_by_x_tiles(facing[0], facing[1], x, y);
	if(layer_at_position("boundry_tiles_layer" , new_position)){
		//new_position = [x,y]
	}
	return new_position
}

function walker_behavior(){
	var new_position = walker_next_position()
	target_position[0] = new_position[0];
	target_position[1] = new_position[1];
	
	desired_coor = [x,y];
	turn_intention = false;
	desired_coor = new_position;
}