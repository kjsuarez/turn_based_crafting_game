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
if(turn_collision(self, player_obj)){
	with(player_obj.hp_bar){
		hp -= 1;
		image_xscale = hp;
	}
	instance_destroy();
}
*/