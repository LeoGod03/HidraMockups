/// @description saber si el mouse esta dentro

top_y = 225 - (210 * global.play_mockup);
buttom_y = 275 - (210 * global.play_mockup);

if(device_mouse_x_to_gui(0) < 1600 || device_mouse_x_to_gui(0) > 1750){
	index_selection = -1;
	exit;
}
if(device_mouse_y_to_gui(0) < top_y || device_mouse_y_to_gui(0) > buttom_y){
	index_selection = -1;
	exit;
}

index_selection = floor((device_mouse_x_to_gui(0) - 1600) / (SIZEPREF * 3));
