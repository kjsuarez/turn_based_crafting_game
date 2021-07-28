// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
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