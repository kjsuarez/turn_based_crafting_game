/// @description Insert description here

// Inherit the parent event
event_inherited();

is_bullet = true;
will_collide = false;
colliding = false;
experiences_knockback = false;

//decision_script = "fire_ball_behavior";
position_script = "bullet_next_position";
collision_script_name = "animate_and_do_damage"
collision_sprite = flame_fx_spr
direction_coor = [0,-1];
targets = ds_list_create();

handle_bullet_collision([x,y])