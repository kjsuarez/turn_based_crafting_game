colliders = ds_list_create();

team = "enemy"
opposite_team = "player"
experiences_knockback = true;


flub_val = 0.05
half_stepping = false;
blink_length_counter = 0;
blink_counter = 0;
blink_length = 3;
total_blinks = 5;
blinking = false;
blink_on = false;

is_bullet = false;
target_position = [x,y];
transition_spd = 0.2;
half_step_transition_spd = 0.5;

reveal_path = false;
ai_path = path_add();
