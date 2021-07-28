/// @description Insert description here

// Inherit the parent event
event_inherited();

if(place_meeting(target_position[0], target_position[1], player_obj)){
	with(player_obj.hp_bar){
		hp -= 1;
		image_xscale = hp;
	}
	
	instance_destroy();
	
}
