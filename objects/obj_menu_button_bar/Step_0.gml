/// @description 

if(device_mouse_x_to_gui(0) < position_x - length_width / 2 || device_mouse_x_to_gui(0) > position_x + length_width / 2){
	selection = false;
	exit;
}

if(device_mouse_y_to_gui(0) < position_y - 20 || device_mouse_y_to_gui(0) > position_y + 20){
	selection = false;
	exit;
}

selection = true;