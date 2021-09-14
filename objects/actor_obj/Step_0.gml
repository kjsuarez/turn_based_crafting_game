/// @description Insert description here

var collider_count = ds_list_size(colliders)
if(experiences_knockback && collider_count > 0){
	target_position = [x,y];
	show_debug_message("I have colliders");
	// approach desired_coor
	// stop half way
	// jump back to resolved_coor
	// blink for x frames
	
	/*
	blink_length_counter = 0
	blink_counter = 0;
	blink_length = 3;
	total_blinks = 6;
	blinking = false;
	blink_on = false;
	*/
	blinking = true;
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
		}
	}
}