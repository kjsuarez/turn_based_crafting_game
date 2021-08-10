/// @description Insert description here
if(transitioning){
	trans_val += (1 - trans_val) * transition_spd;
}

if(trans_val >= 1 - flub_val && transitioning){
	transitioning = false;
	trans_val = 0;
	sprite_index = next_sprite;
}