function advance_turn(){
	with(turn_taker_obj){
		if (self.id != player_obj.id){
			
			var behavior_script = asset_get_index(decisioin_script);
			script_execute(behavior_script)
			
		}
	}
}