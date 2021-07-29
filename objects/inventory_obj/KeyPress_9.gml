/// @description Insert description here
inventory_open = !inventory_open;
if(inventory_open){
	manager_obj.previous_state = manager_obj.state;
	manager_obj.state = "menu";
} else {
	manager_obj.previous_state = manager_obj.state;
	manager_obj.state = "neutral";
}