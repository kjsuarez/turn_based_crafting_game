function shooter_next_position(){
	return [x,y]
}

function shooter_behavior(){
	standard_actor_behavior();
	target_position = [x,y]

	
	if(preparing_attack){
		reveal_path = false;
		
		var bullet_dir = closest_cardinal_direction(x, y, player_obj.x, player_obj.y);
		var bullet_possition = adjusted_position_by_x_tiles(bullet_dir[0], bullet_dir[1], x, y);
		var flamy_boy = instance_create_layer(bullet_possition[0],bullet_possition[1],"bullet_layer",flame_obj);
		
		with(flamy_boy){
			direction_coor = bullet_dir;
		}
		preparing_attack = false
		
	} else {
		
		reveal_path = false;
		preparing_attack = true;
		
		
	}
}