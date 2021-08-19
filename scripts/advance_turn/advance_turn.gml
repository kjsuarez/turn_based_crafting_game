function advance_turn(){
	with(actor_obj){
		if (self.id != player_obj.id){			
			var behavior_script = asset_get_index(decision_script);
			script_execute(behavior_script)
			
			if(is_bullet && out_of_bounds()){
				instance_destroy();
			}
		}
	}
}