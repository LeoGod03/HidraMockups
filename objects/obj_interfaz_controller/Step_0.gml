/// @description 
global.position_cursor_x = mouse_x;
global.position_cursor_y = mouse_y;

global.position_cursor_y = clamp(global.position_cursor_y,  290, room_height);
global.position_cursor_x = clamp(global.position_cursor_x, 190, room_width - 256);
if(keyboard_check_pressed(vk_f1))
	window_set_fullscreen(!window_get_fullscreen());
	
if(keyboard_check_pressed(ord("G"))){
	
	grid_draw_active = !grid_draw_active;
	if(grid_draw_active){
		count_grid_x = (lenght_level_width - 256 - 190) / global.grid_width;
		count_grid_y = (lenght_level_height - 280) / global.grid_height;
	}
}


