function animate_and_do_damage(){
	
	for (var i = 0; i < ds_list_size(targets); i += 1){
		
		var target = targets[|i]
		if(variable_instance_exists(target, "hp_bar")){
			with(target.hp_bar){
			
				hp -= 1;
				image_xscale = hp;
			}
		}		
		
	}
	instance_destroy();
	
}