/// @description Insert description here
draw_self();

if(!grabbed && !placed){
	var ingredient_name = object_get_name(object_index);
	
	var ingredient_of_this_type_arry = player_obj.inventory.complex_ingredients[? ingredient_name];
	//show_debug_message(string())
	var ingredient_json = json_encode(player_obj.inventory.complex_ingredients)
	
	var number_of_instances_of_this_type = ds_list_size(ingredient_of_this_type_arry);
	//draw_text(x, y, "x" + string(number_of_instances_of_this_type));
	var array_json = json_encode(ingredient_of_this_type_arry);
		
	draw_set_colour(c_white);
	var writable_width = 100;
	draw_text_ext(x - abs(sprite_width/2) + 20, y - abs(sprite_height/2), "x" + string(number_of_instances_of_this_type), 20, writable_width);
	
}	