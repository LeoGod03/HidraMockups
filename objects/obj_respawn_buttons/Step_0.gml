/// @description 
position_x = 700 + 160 * position;

if(global.selection){
	selection = false;
	exit;
}

if(device_mouse_x_to_gui(0) < position_x - width /2 || device_mouse_x_to_gui(0) > position_x + width / 2){
	selection = false;
	exit;
}

if(device_mouse_y_to_gui(0) < position_y - 48 || device_mouse_y_to_gui(0) > position_y + 48){
	selection = false;
	exit;
}

selection = true;