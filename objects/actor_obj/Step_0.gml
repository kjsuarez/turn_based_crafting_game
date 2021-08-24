/// @description Insert description here

x += (target_position[0] - x) * transition_spd;
y += (target_position[1] - y) * transition_spd;

if(x != target_position[0] || y != target_position[1]){
	if(abs(target_position[0] - x) <= flub_val = 0.05 ||  abs(target_position[1] - y) <= flub_val = 0.05 ){
		x = target_position[0]
		y = target_position[1]
	}
}
