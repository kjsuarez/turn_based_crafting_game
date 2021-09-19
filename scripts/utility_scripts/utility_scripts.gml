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



function layer_at_position(layer_name, tile_position){
	var layer_in_question = layer_get_id(layer_name);
	var layer_tiles = layer_tilemap_get_id(layer_in_question);
	var layer_tile_index = tilemap_get_at_pixel(layer_tiles, tile_position[0], tile_position[1]);

			
	return (layer_tile_index == 1)

}

function halfway_between(point_a, point_b){
	var new_x = (point_a[0] + ceil((point_b[0] - point_a[0])/2))
	var new_y = (point_a[1] + ceil((point_b[1] - point_a[1])/2))
	return [new_x, new_y];
}