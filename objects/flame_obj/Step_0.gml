/// @description Insert description here

// Inherit the parent event
event_inherited();

if(turn_collision(self, player_obj)){
	with(player_obj.hp_bar){
		hp -= 1;
		image_xscale = hp;
	}
	instance_destroy();
}
