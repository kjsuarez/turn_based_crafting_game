function standard_actor_behavior(){
	experience_ttl();
}

function experience_ttl(){
	if(variable_instance_exists(self, "ttl")){
		show_debug_message(ttl)
		ttl -= 1;
		if(ttl == 0){
			instance_destroy();
		}
	}
}

function out_of_bounds(){
	var vw = camera_get_view_width(view_camera[0]);
	var vh = camera_get_view_height(view_camera[0]);
	
	return (x >= vw || x < 0 || y < 0 || y >= vh)
}