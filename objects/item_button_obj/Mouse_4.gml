/// @description Insert description here
var grabbed_inst = instance_position(mouse_x, mouse_y, self);
if (grabbed_inst != noone && visible){

	if(grabbed_inst.id == self.id){
		if(click_ready){
			show_debug_message("You pressed the item button")
			var item_inst = add_item_from_craft_table();
			
			var center = center_of_view_coor();			
			create_binary_text_box(center[0], center[1], "Equip item?", "equip_item", item_inst);
		}
	}
}