/// @description Insert description here
if(inventory_open){
	var vw = camera_get_view_width(view_camera[0]);
	var vh = camera_get_view_height(view_camera[0]);
	draw_set_color(c_black);
	draw_rectangle(0,0,vw,vh,false);

}