function ds_list_remove_instance(_list, _inst){
	show_debug_message("array size before I do my work:")
	show_debug_message(string(ds_list_size(_list)));
	
	for (var i = 0; i < ds_list_size(_list); i += 1){
	    if(_list[|i].id == _inst.id){
			show_debug_message("deleting element from array")
			ds_list_delete(_list, i);
			break;
		}
    }
	
	show_debug_message("array size after I do my work:")
	show_debug_message(string(ds_list_size(_list)));
}