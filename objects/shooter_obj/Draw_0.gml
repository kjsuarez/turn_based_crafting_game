/// @description Insert description here
/// @description Draw static sprite for facing direction


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
 
if(!blinking || !blink_on){
	draw_sprite(sprite_index, facing_sprite_index, x, y);
} 



if(x != target_position[0] || y != target_position[1]){
	draw_set_color(c_red);
	draw_circle(x,y,5,false);
}