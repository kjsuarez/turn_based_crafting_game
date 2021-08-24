/// @description Insert description here

// Inherit the parent event
event_inherited();

 if(will_collide && array_equals([x,y], target_position)){
	will_collide = false;
	colliding = true;
	sprite_index = collision_sprite;
	image_angle = 0
 }
 
 if(colliding){
	 image_angle = 0
	  if( image_index >= image_number - 1){
		collision_script = asset_get_index(collision_script_name)
		script_execute(collision_script)
	 }
 }