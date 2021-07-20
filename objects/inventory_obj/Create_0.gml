/// @description Insert description here
inventory_open = false;

ingredients = ds_list_create();
ingredients_list_start_coor = [32,32];
ingredients_list_y_seperation = 32;
items_list_start_coor = [(400 - 64),32];
items_list_y_seperation = 32;

craft_table_1 = instance_create_layer(64, (300 - 64), "menu_items_layer", trait_holder_obj);

item_button = instance_create_layer((400 - 64), (300 - 64), "menu_items_layer", item_button_obj);

items = ds_list_create();

