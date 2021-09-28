/// @description Insert description here

// *** Transition obj draft ***

if !surface_exists(surf){
	surf = surface_create((viewport_width * 1/*camera_obj.zoom*/) + 2, (viewport_height * 1/*camera_obj.zoom*/) + 2);
}
//(viewport_width * 1/*camera_obj.zoom*/) + 2, (viewport_height * 1/*camera_obj.zoom*/) + 2
if(
	(surface_get_width(surf) != (viewport_width * 1/*camera_obj.zoom*/) + 2) || 
	(surface_get_height(surf) != (viewport_height * 1/*camera_obj.zoom*/) + 2)
){
	surface_resize(surf, (viewport_width * 1/*camera_obj.zoom*/) + 2, (viewport_height * 1/*camera_obj.zoom*/) + 2)
}

surface_set_target(surf);
draw_set_color(c_black);
//draw_rectangle(0,0,camera_get_view_width(view_camera[0]) * 1/*camera_obj.zoom*/,camera_get_view_height(view_camera[0]) * 1/*camera_obj.zoom*/, false);
draw_rectangle(0,0,surface_get_width(surf), surface_get_height(surf), false);
gpu_set_blendmode(bm_subtract);
//show_debug_message("camera zoom: " + string(1/*camera_obj.zoom*/));

draw_circle_colour((viewport_width * 1/*camera_obj.zoom*/)/2, (viewport_height * 1/*camera_obj.zoom*/)/2, visible_radius, c_white, c_white, false);


gpu_set_blendmode(bm_normal);
surface_reset_target();
	
var _vx = camera_get_view_x(view_camera[0]);
var _vy = camera_get_view_y(view_camera[0]);
draw_surface(surf, _vx, _vy);