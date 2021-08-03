function update_inventory_state(){
	//are all craft board slots filled?
	
	if(inventory_obj.craft_table_1.related_ingredient_inst){
		// set button accordlingly
		item_button_obj.click_ready = true;
		item_button_obj.sprite_index = go_button_spr;
	}else {
		// set button accordlingly
		item_button_obj.click_ready = false;
		item_button_obj.sprite_index = grey_go_button_spr;
	}
	
}