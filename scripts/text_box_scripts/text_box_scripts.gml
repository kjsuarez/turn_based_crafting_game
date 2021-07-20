// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_binary_text_box(x_pos, y_pos, body_text, confirm_script, confirm_param){
	var box_inst = instance_create_layer(x_pos, y_pos, "text_box_layer", text_box_obj);
	with(box_inst){
		var view_w_l = view_width_and_length();
		var correct_x_scale = view_w_l[0]/sprite_get_width(sprite_index);
		image_xscale = correct_x_scale;
		image_yscale = 3;
		y = view_w_l[1] - (sprite_height/2)
		text_body = body_text;
		child_buttons = ds_list_create();
		
		var yes_button_coor = [x + abs(sprite_width/2) - 40, y - abs(sprite_height/2) + 20];
		var yes_button = instance_create_layer(yes_button_coor[0], yes_button_coor[1], "button_layer", generic_button_obj);
		with(yes_button){
			image_xscale = 1.2;
			image_yscale = 1.2;
			text_body = "Yes";
			parent_box = box_inst;
			click_script = confirm_script;
			click_param = confirm_param;
		}
		
		ds_list_add(box_inst.child_buttons, yes_button) 
	}
}

function clean_up_text_box(box_inst){
	//destroy each child button
	for (var i = 0; i < ds_list_size(box_inst.child_buttons); ++i;){
        button_inst = box_inst.child_buttons[|i];
		instance_destroy(button_inst);
    }
	instance_destroy(box_inst);
}

