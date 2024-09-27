/// @description
panel_top_active = true;
panel_right_active = true;
grid_draw_active = false;

global.grid_height = 128;
global.grid_width = 128;

count_grid_x = 0;
count_grid_y = 0;

global.width = display_get_gui_width();
global.height = display_get_gui_height();

global.position_cursor_x = -1;
global.position_cursor_y = -1;

global.list_resources = [];
global.list_resources[0] = instance_create_depth(0, 0, -1, obj_respawn_player);
global.list_resources[1] = instance_create_depth(0, 0, -1, obj_respawn_arquero);
global.list_resources[2] = instance_create_depth(0, 0, -1, obj_respawn_caballero);
global.list_resources[3] = instance_create_depth(0, 0, -1, obj_respawn_sacerdote);