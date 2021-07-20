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