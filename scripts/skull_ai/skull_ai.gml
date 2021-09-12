// called from enemy's context
function skull_next_position(){
	if(!preparing_attack){
		var new_position = one_tile_closer_to_player(); //one_random_cardinal_tile_over();
		return new_position
	} else {
		return [x,y];
	}
	
}

function skull_behavior(){
	standard_actor_behavior();
	
	if(preparing_attack){
		reveal_path = false;
		
		sprite_index = skull_enemy_spr;
		
		var bullet_dir = closest_cardinal_direction(x, y, player_obj.x, player_obj.y);
		var bullet_possition = adjusted_position_by_x_tiles(bullet_dir[0], bullet_dir[1], x, y);
		var flamy_boy = instance_create_layer(bullet_possition[0],bullet_possition[1],"bullet_layer",flame_obj);
		
		with(flamy_boy){
			direction_coor = bullet_dir;
		}
		preparing_attack = false
		
	} else {
		
		var choice = irandom_range(0, 3);
		if(choice != 0){
			var new_position = skull_next_position()
			target_position[0] = new_position[0];
			target_position[1] = new_position[1];
			reveal_path = true;
		} else {
			reveal_path = false;
			preparing_attack = true;
			
			sprite_index = charging_skull_spr;
		}
	}				
}