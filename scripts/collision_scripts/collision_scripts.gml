function animate_and_do_damage(){
	
	for (var i = 0; i < ds_list_size(colliders); i += 1){
		
		var target = colliders[|i]
		if(variable_instance_exists(target, "hp_bar")){
			with(target.hp_bar){
			
				hp -= 1;
				image_xscale = hp;
			}
		}		
		
	}
	instance_destroy();
	
}

function reverse_direction(){
	facing[0] = facing[0] * -1;
	facing[1] = facing[1] * -1;
}