event_inherited();
team = "enemy";
opposite_team = "player";
moves = true;
preparing_attack = false;
decision_script = "walker_behavior";
position_script = "walker_next_position";


hp_bar = instance_create_layer(x,y - (sprite_height/2),"hud_layer",hp_bar_obj)
with(hp_bar){
	owner = other;
	hp = 3;
	image_xscale = hp;
}
