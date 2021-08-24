// called from enemy's context
function fire_ball_next_position(){
	var new_position = adjusted_position_by_x_tiles(direction_coor[0], direction_coor[1], x, y);
	return new_position
}

function fire_ball_behavior(){
	/*
	standard_actor_behavior();
	
	var new_position = fire_ball_next_position()
	target_position[0] = new_position[0];
	target_position[1] = new_position[1];

	
	var actors_in_this_space = actors_that_intend_to_occupy_this_tile(new_position)
	//if there are any enemy actors in this list set will_collide to true.
	for (var i = 0; i < ds_list_size(actors_in_this_space); i += 1){
		var would_be_collider = actors_in_this_space[|i];
		
		if(would_be_collider.team == opposite_team){
			will_collide = true;
			
		}
	}
	*/
	bullet_behavior();
}