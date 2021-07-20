// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function equip_item(item_inst) {
	if(player_obj.equiped_item != false){
		// destroy hud_sister
		instance_destroy(player_obj.equiped_item.hud_element)
		
	}
	player_obj.equiped_item = item_inst;
	var hud_item_inst = instance_create_layer(16,16,"hud_layer",hud_item_obj);
	with(hud_item_inst){
		sprite_index = item_inst.sprite_index
	}
	item_inst.hud_element = hud_item_inst;
}