/// @description Insert description here

// Inherit the parent event
event_inherited();
item_sprite = flask_ingredient_spr;
player_effect = "spawn_dust_cloud";
player_effect_description = "creates a harmless dust cloud";

spawn_location = "cell_in_front_of_player";
spawn_behavior = "move_ahead_one_step_forever";
spawn_description = "moves 1 tile/turn in direction player is facing";