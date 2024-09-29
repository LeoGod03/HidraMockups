/// @description 

if(show_list){
	if(device_mouse_x_to_gui(0) >=  position_x - width / 2 * factor_font && device_mouse_x_to_gui(0) <= position_x + width / 2 * factor_font){
		if(device_mouse_y_to_gui(0) >= position_y + 30 && device_mouse_y_to_gui(0) <= position_y + 30 + list_heigth){ 
			enter_options = true;
			selection_index_prev = floor((device_mouse_y_to_gui(0) - (position_y + 30)) / 30);
		}else
			enter_options = false;
	}else
		enter_options = false;
		
	selection_index_prev = clamp(selection_index_prev, 0, array_length(options_list) - 1);
	
}


if(device_mouse_x_to_gui(0) < position_x - width / 2 * factor_font || device_mouse_x_to_gui(0) > position_x + width / 2 * factor_font){ 
	selection = false;
	exit;
}

if(device_mouse_y_to_gui(0) < position_y - 30 || device_mouse_y_to_gui(0) > position_y + 30){ 
	selection = false;
	exit;
}

selection = true;
