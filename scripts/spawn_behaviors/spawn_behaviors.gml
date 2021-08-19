function spawn_actor(actor_object){
	var spawn_script = asset_get_index(spawn_location);
	var spawn_coor = script_execute(spawn_script);
	var actor_inst = instance_create_layer(spawn_coor[0], spawn_coor[1], "instance_layer", actor_object);
	with(actor_inst){
		direction_coor = player_obj.facing;
		decision_script = other.spawn_behavior;
		impact_effect = other.impact_effect
	}
}

function spawn_dust_cloud(){
	spawn_actor(dust_cloud_obj)
}

function spawn_lightning(){
	spawn_actor(lightning_obj)
}