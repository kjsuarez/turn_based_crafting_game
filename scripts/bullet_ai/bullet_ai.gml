function bullet_next_position(){
	var new_position = adjusted_position_by_x_tiles(direction_coor[0], direction_coor[1], x, y);
	return new_position
}

function bullet_behavior(){
	standard_actor_behavior();
	
	var new_position = bullet_next_position()
	target_position[0] = new_position[0];
	target_position[1] = new_position[1];
	
	desired_coor = [x,y];
	desired_coor = new_position;
	//handle_bullet_collision(new_position)
}

function handle_bullet_collision(coor_array){
	var actors_in_this_space = actors_that_intend_to_occupy_this_tile(coor_array)
	//if there are any enemy actors in this list set will_collide to true.
	var collision_targets = ds_list_create();
	for (var i = 0; i < ds_list_size(actors_in_this_space); i += 1){
		var would_be_collider = actors_in_this_space[|i];
		
		if(id != would_be_collider.id && would_be_collider.team == opposite_team){
			will_collide = true;
			ds_list_add(collision_targets, would_be_collider);
			
			
		}
	}
	targets = collision_targets;
	
}
