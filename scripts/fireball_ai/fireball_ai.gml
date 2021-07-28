// called from enemy's context
function fire_ball_next_position(){
	var new_position = adjusted_position_by_x_tiles(direction_coor[0], direction_coor[1], x, y);
	return new_position
}

function fire_ball_behavior(){
	standard_actor_behavior();
	
	var new_position = fire_ball_next_position()
	target_position[0] = new_position[0];
	target_position[1] = new_position[1];
}