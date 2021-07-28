// called from enemy's context
function skull_next_position(){
	var new_position = one_cardinal_tile_over();
	return new_position
}

function skull_behavior(){
	standard_actor_behavior();
	
	if(preparing_attack){
		sprite_index = skull_enemy_spr;
		
		var bullet_dir = closest_cardinal_direction(x, y, player_obj.x, player_obj.y);
		var bullet_possition = adjusted_position_by_x_tiles(bullet_dir[0], bullet_dir[1], x, y);
		var flamy_boy = instance_create_layer(bullet_possition[0],bullet_possition[1],"instance_layer",flame_obj);
		
		with(flamy_boy){
			direction_coor = bullet_dir;
		}
		preparing_attack = false
		
	} else {
		var choice = irandom_range(0, 1);
		if(choice == 0){
			var new_position = skull_next_position()
			target_position[0] = new_position[0];
			target_position[1] = new_position[1];
		} else {
			preparing_attack = true;
			
			sprite_index = charging_skull_spr;
		}
	}				
}