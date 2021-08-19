/// @description Insert description here

//draw_self();
switch (facing[0]){
	case 0:
		switch(facing[1]){
			case -1:
				//up
				facing_sprite_index = 1
				break;
			
			case 1:
				//down
				facing_sprite_index = 0
				break;
			default:
			break;
		}
		break;
	case 1:
		facing_sprite_index = 3
		break;
	case -1:
		facing_sprite_index = 2
		break;
	break;
	default:
		break;
 }
 
 
draw_sprite(sprite_index, facing_sprite_index, x, y);