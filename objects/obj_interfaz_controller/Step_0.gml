/// @description 
global.position_cursor_x = mouse_x;
global.position_cursor_y = mouse_y;

global.position_cursor_y = clamp(global.position_cursor_y,  0, lenght_level_height);
global.position_cursor_x = clamp(global.position_cursor_x, 0, lenght_level_width);
if(keyboard_check_pressed(vk_f1))
	window_set_fullscreen(!window_get_fullscreen());

if(global.play_mockup) exit;
	
if(keyboard_check_pressed(ord("G"))){
	
	grid_draw_active = !grid_draw_active;
	if(grid_draw_active){
		count_grid_x = (lenght_level_width) / global.grid_width;
		count_grid_y = (lenght_level_height) / global.grid_height;
	}
}


index_file_control_selection = (device_mouse_x_to_gui(0) < 150 && device_mouse_y_to_gui(0) < 75) ? floor(device_mouse_x_to_gui(0) / 50) : -1;	


if(device_mouse_y_to_gui(0) < 210){
	index_mockup_selection = -1;
	exit;
}

if(device_mouse_x_to_gui(0) > 285){
	index_mockup_selection = -1;
	exit;
}

index_mockup_selection = floor((device_mouse_y_to_gui(0) - 210) / 200);

index_mockup_selection = clamp(index_mockup_selection, -1, global.index_list);
