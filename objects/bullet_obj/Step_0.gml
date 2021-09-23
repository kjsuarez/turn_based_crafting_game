/// @description Insert description here

// Inherit the parent event
event_inherited();
var collider_count = ds_list_size(colliders)

 if(collider_count > 0 && colliding == false && array_equals([x,y], target_position)){
	colliding = true;
	sprite_index = collision_sprite;
	image_angle = 0
 }
 
 if(colliding){
	 colliding = false;
	 image_angle = 0
	  if( image_index >= image_number - 1){
		collision_script = asset_get_index(collision_script_name)
		script_execute(collision_script)
	 }
 }