// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function one_cardinal_tile_over(){
 var move_choice = irandom_range(0,3);
 var x_delta = 0;
 var y_delta = 0;
 switch (move_choice){
	case 0:
		//up
		x_delta = 0;
		y_delta = -1;
		break;
	case 1:
		//left
		x_delta = -1;
		y_delta = 0;
		break;
	case 2:
		//down
		x_delta = 0;
		y_delta = 1;
		break;
	case 3:
		//right
		x_delta = 1;
		y_delta = 0;
		break;
	default:
		break;
 }
 return adjusted_position_by_x_tiles(x_delta, y_delta, x, y);
}