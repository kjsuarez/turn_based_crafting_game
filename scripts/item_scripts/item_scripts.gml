function equip_item(item_inst) {
	
	var old_sprite = false;
	if(player_obj.equiped_item != false && variable_instance_exists(player_obj.equiped_item, "hud_element")){
		var hud_item_inst = player_obj.equiped_item.hud_element
		//old_sprite = hud_item_inst.sprite_index;
		//instance_destroy(player_obj.equiped_item.hud_element)
		
	} else {
		var hud_item_inst = instance_create_layer(16,16,"hud_layer",hud_item_obj);		
		item_inst.hud_element = hud_item_inst;
		
	}
	
	with(hud_item_obj){
		var the_right_sprite = old_sprite != false ? old_sprite : item_inst.sprite_index
		show_debug_message("the item index: "+ string(item_inst) +"the thing: " + string(sprite_get_name(the_right_sprite)))
		
		sprite_index = the_right_sprite;
		next_sprite = item_inst.sprite_index
		
	}
	player_obj.equiped_item = item_inst;
	
}

function equip_next_item(){
	var equipment_cieling = ds_list_size(inventory_obj.items) - 1;
	var equiped_index = ds_list_find_index(inventory_obj.items, player_obj.equiped_item)
	if(equiped_index == equipment_cieling){
		var target_item = inventory_obj.items[| 0]
	} else {
		var target_item = inventory_obj.items[| equiped_index + 1]
	}
	
	//equip_item(target_item);
	player_obj.equiped_item = target_item;
	with(hud_item_obj){
		if(transitioning){
			sprite_index = next_sprite;
			trans_val = 0;
		}
		next_sprite = target_item.sprite_index;
		transitioning = true;
		transition_dir = -1;
	}
}

function equip_previous_item(){
	var equipment_cieling = ds_list_size(inventory_obj.items) - 1;
	var equiped_index = ds_list_find_index(inventory_obj.items, player_obj.equiped_item)
	if(equiped_index == 0){
		var target_item = inventory_obj.items[| equipment_cieling]
	} else {
		var target_item = inventory_obj.items[| equiped_index - 1]
	}
	
	//equip_item(target_item);
	player_obj.equiped_item = target_item;
	with(hud_item_obj){
		if(transitioning){
			sprite_index = next_sprite;
			trans_val = 0;
		}
		next_sprite = target_item.sprite_index;
		transitioning = true;
		transition_dir = 1;
	}
}