// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function center_of_view_coor(){
	var vw = camera_get_view_width(view_camera[0]);
	var vh = camera_get_view_height(view_camera[0]);
	return [vw/2, vh/2];
}

function view_width_and_length(){
	var vw = camera_get_view_width(view_camera[0]);
	var vh = camera_get_view_height(view_camera[0]);
	return [vw, vh];
}

function closest_cardinal_direction(origin_x, origin_y, dest_x, dest_y){
	var delta_x = (dest_x - origin_x)
	var delta_y = (dest_y - origin_y)
	var choice_coor = [0,0]
	var is_x_or_y_bigger = (abs(delta_x) - abs(delta_y));
	
	if(is_x_or_y_bigger > 0){
		choice_coor = [(delta_x/abs(delta_x)), 0]
	} else if(is_x_or_y_bigger < 0) {
		choice_coor = [0, (delta_y/abs(delta_y))]
	} else {
		choice_coor = [(delta_x/abs(delta_x)), 0]
	}
	
	return choice_coor;
}

function array_index_of_element(arry, element){
	var index = undefined;
	for (var i = 0; i < array_length(arry); i += 1){
	    if (arry[i] == element){
			index = i;
	        break;
	    }
	    
	}
	return index;
}

function team_inverse(team_str){
	if(team_str == "player"){
		return "enemy"
	} else {
		return "player"
	}
}