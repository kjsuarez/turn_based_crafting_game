/// @description Insert description here

// Inherit the parent event
event_inherited();
team = "enemy";
opposite_team = "player";
image_xscale = 2;
image_yscale = 2;

moves = true;
preparing_attack = false;
decision_script = "skull_behavior";
position_script = "skull_next_position";


hp_bar = instance_create_layer(x,y - (sprite_height/2),"hud_layer",hp_bar_obj)
with(hp_bar){
	owner = other;
	hp = 3;
	image_xscale = hp;
}
