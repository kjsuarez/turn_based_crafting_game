/// @description Check if actors finished acting

var finished_acting = true;
with(actor_obj){
	if(!array_equals([x,y], target_position)){
		finished_acting = false;
	}
}

if(finished_acting){
	state = "neutral";
} else {
	alarm[0] = turn_check_speed;
}