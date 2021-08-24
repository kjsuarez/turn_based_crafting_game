/// @description Insert description here

// Inherit the parent event
event_inherited();

//handle animation rotation
switch (direction_coor[0]){
	case 0:
		switch(direction_coor[1]){
			case -1:
				//up
				image_angle = 0
				break;
			
			case 1:
				//down
				image_angle = 180
				break;
			default:
			break;
		}
		break;
	case 1:
		image_angle = -90
		break;
	case -1:
		image_angle = 90
		break;
	break;
	default:
		break;
}
 
 /*
 
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


*/