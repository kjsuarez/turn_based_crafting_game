/// @description Insert description here

show_debug_message("mouse pressed");
show_debug_message(string(mouse_x)+" vs "+string(self.x));
show_debug_message(string(mouse_y)+" vs "+string(self.y));

var grabbed_inst = instance_position(mouse_x, mouse_y, self);
if (grabbed_inst != noone){
	show_debug_message("mouse pressed and intersecting");
	if(grabbed_inst.id == self.id){
		show_debug_message("mouse pressed and intersecting with me");
		grabbed = true;
	}
}