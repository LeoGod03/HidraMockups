/// @description
depth = 1;

panel_top_active = false;
panel_left_active = false;

grid_draw_active = false;

global.grid_height = 16;
global.grid_width = 16;

count_grid_x = 0;
count_grid_y = 0;

global.width = 1920;
global.height = 1080;

global.position_cursor_x = -1;
global.position_cursor_y = -1;

alarm[0] = game_get_speed(gamespeed_fps) * 0.5;

lenght_level_width = 320;
lenght_level_height = 180;

max_lenght_level_width = room_width;
max_lenght_level_height = room_height;

list_elements_panel = [];


alarm[1] = 10;

index_mockup_selection = -1;
index_file_control_selection = -1;