/// @description Insert description here

var collider_count = ds_list_size(colliders)
if(experiences_knockback && collider_count > 0){

	
	if(!half_stepping && !blinking){
		half_stepping = true;
		half_step_coor = halfway_between([x,y], target_position)//[x+ 8, y + 8];
		target_position = half_step_coor//[x,y];
	}
	
	if(half_stepping){
		x += ((target_position[0] - x) * half_step_transition_spd);
		y += ((target_position[1] - y) * half_step_transition_spd);

		if(x != target_position[0] || y != target_position[1]){
			if(
				abs(target_position[0] - x) <= flub_val &&  
				abs(target_position[1] - y) <= flub_val 
			){
				x = resolved_coor[0]
				y = resolved_coor[1]
			
				target_position = [x,y];
				half_stepping = false;
				blinking = true;
			}
		}
	}
	
	
	// approach desired_coor
	// stop half way
	// jump back to resolved_coor
	// blink for x frames
	
	/*
	half_stepping = false
	blink_length_counter = 0
	blink_counter = 0;
	blink_length = 3;
	total_blinks = 6;
	blinking = false;
	blink_on = false;
	*/
	
	if(blinking){
		blink_length_counter += 1;
	
		if(blink_length_counter >= blink_length){
			blink_on = !blink_on
			blink_counter += 1;
			blink_length_counter = 0;
		}
		if(blink_counter >= total_blinks){
			blinking = false;
			blink_counter = 0;
			colliders = ds_list_create();
			
			
			if(variable_instance_exists(self, "collision_script_name") && !overrides_collision){
				collision_script = asset_get_index(collision_script_name)
		
				script_execute(collision_script)
				 
			}	
			experienced_collision = true;
			acting = false;
			
		}
	}

	//////////////////////

	
} else {

	x += ((target_position[0] - x) * transition_spd);
	y += ((target_position[1] - y) * transition_spd);

	if(x != target_position[0] || y != target_position[1]){
		if(
			abs(target_position[0] - x) <= flub_val &&  
			abs(target_position[1] - y) <= flub_val 
		){
			x = target_position[0]
			y = target_position[1]
			
			if(variable_instance_exists(self, "collision_script_name") && !overrides_collision && collider_count > 0){
				collision_script = asset_get_index(collision_script_name)
		
				script_execute(collision_script)
			}
		}
	}
}




/*
if(variable_instance_exists(self, "collision_script_name") && !overrides_collision){
	 if(collider_count > 0 && colliding == false && array_equals([x,y], target_position)){
		colliding = true;

	 }
 
	 if(colliding){
		colliding = false;
		//colliders = ds_list_create();
		collision_script = asset_get_index(collision_script_name)
		
		script_execute(collision_script)
	 }
}

*/







