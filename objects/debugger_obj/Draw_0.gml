/// @description Insert description here

draw_set_color(c_red);
var ingredients = player_obj.inventory.ingredients
for (var i = 0; i < ds_list_size(ingredients); i += 1){
	var item = ingredients[|i];
	
	draw_text_transformed(32, 32 + (i * 32), string(i) + ". "+ string(item.name), 0.5, 0.5, image_angle);
}

var center = center_of_view_coor();

