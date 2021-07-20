// called from enemy's context
function enemy_next_position(){
	var x_delta = irandom_range(-1, 1);
	var y_delta = irandom_range(-1, 1);	
	var new_position = adjusted_position_by_x_tiles(x_delta, y_delta, x, y);
	return new_position
}

function enemy_behavior(){
	if(variable_instance_exists(self, "ttl")){
		show_debug_message(ttl)
		ttl -= 1;
		if(ttl == 0){
			instance_destroy();
		}
	}
	
	var choice = irandom_range(0, 1);
	if(choice == 0){
		var new_position = enemy_next_position()
		target_position[0] = new_position[0];
		target_position[1] = new_position[1];
	} else {
		instance_create_layer(x,y,"instance_layer",flame_obj);
	}
	
	
}