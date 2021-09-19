function advance_turn(){

	with(actor_obj){
		if (self.id != player_obj.id){	
			// set your desired_coor 
			/*
			desired_coor = [x,y];
			turn_intention = false;
			var position_script_name = asset_get_index(position_script);
			desired_coor = script_execute(position_script_name);
			*/
			
			var behavior_script = asset_get_index(decision_script);
			script_execute(behavior_script)
			if (!variable_instance_exists(id, "desired_coor")){
				desired_coor = [x,y];
			} 
			
			if(!is_array(desired_coor)){
				desired_coor = [x,y];
			}
		}
	}
	
	with(actor_obj){
		//if (self.id != player_obj.id){
			// use the above to populate a colliders array
			var actors_in_this_space = actors_with_this_value_at_this_var(desired_coor, "desired_coor")
			var collision_targets = ds_list_create();
			for (var i = 0; i < ds_list_size(actors_in_this_space); i += 1){
				var would_be_collider = actors_in_this_space[|i];
		
				if(id != would_be_collider.id ){
					will_collide = true;
					ds_list_add(collision_targets, would_be_collider);
			
			
				}
			}
			colliders = collision_targets;
			// If you have colliders, determine your final position and assign it to resolved_coor
			if(ds_list_size(colliders) > 0){
				resolved_coor = experiences_knockback ? [x,y] : desired_coor;
			}		
		//}

	}
	
	var found_colliders = set_colliders_for_resolved_coor();
	
	// run the above 'with' until no colliders are found.
	while(found_colliders){
		found_colliders = set_colliders_for_resolved_coor();
		if(found_colliders != false){
			show_debug_message("found colliders")
		}
		
	}
	
	// set state machine to 'moving'
	
	
		
	with(actor_obj){
		//if (self.id != player_obj.id){			
			//var behavior_script = asset_get_index(decision_script);
			//script_execute(behavior_script)
			
			if(is_bullet && out_of_bounds()){
				instance_destroy();
			}
		//}
	}
	
	with(manager_obj){
		state = "acting"
		alarm[0] = turn_check_speed;
	}
	
	
}

function set_colliders_for_resolved_coor(){
	var found_colliders = false;
	with(actor_obj){
		//if (self.id != player_obj.id){
			// If you don't have colliders, determine colliders based on resolved_coor instead of desired_coor
			if(ds_list_size(colliders) == 0){
				var actors_in_this_space = actors_with_this_value_at_this_var(desired_coor, "resolved_coor")
				var collision_targets = ds_list_create();
				for (var i = 0; i < ds_list_size(actors_in_this_space); i += 1){
					var would_be_collider = actors_in_this_space[|i];
		
					if(id != would_be_collider.id){
						
						will_collide = true;
						ds_list_add(collision_targets, would_be_collider);
			
			
					}
				}
				colliders = collision_targets;	
				
				//if you now have colliders, set your resolved_coor and let the other obj know that you found colliders
				if(ds_list_size(colliders) > 0){
					resolved_coor = experiences_knockback ? [x,y] : desired_coor;
					found_colliders = true
				}	
			}	
		//}
		
	}
	return found_colliders;
}