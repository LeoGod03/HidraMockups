/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(device_mouse_x_to_gui(0) < position_x - factor / 2 || device_mouse_x_to_gui(0) > position_x + factor / 2){
	selection_color = c_black;
	exit;
}

if(device_mouse_y_to_gui(0) <  position_y - length_font * 1.5 || device_mouse_y_to_gui(0) > position_y + length_font * 1.5){
	selection_color = c_black;
	exit;
}

selection_color = c_red;