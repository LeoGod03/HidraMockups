/// @description 
position_x = 700 + 160 * position;

if(global.id_selection == id)
	color = (!place_meeting(global.position_cursor_x, global.position_cursor_y, obj_player))? c_lime: c_red;

if(global.selection){
	selection = false;
	exit;
}

if(device_mouse_x_to_gui(0) < position_x - width /2 || device_mouse_x_to_gui(0) > position_x + width / 2){
	selection = false;
	exit;
}

if(device_mouse_y_to_gui(0) < position_y - height /2 || device_mouse_y_to_gui(0) > position_y + height / 2){
	selection = false;
	exit;
}

selection = true;