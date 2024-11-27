/// @description 
if(global.action) exit;
if(global.selection) exit;

if(enter_options){
	if(selection_index_prev >= array_length(global.list_resources)) exit;
	
	selection_index = selection_index_prev;
	show_list = false;
	selection_index_prev = 0;
	enter_options = false;
	selection_text = options_list[selection_index];
	scr_resources_change(selection_index);
	//exit;
}

if(!selection) exit;

show_list = !show_list;
