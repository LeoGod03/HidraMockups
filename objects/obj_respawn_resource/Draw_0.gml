/// @description
// dibujamos la seleccion 

if(global.id_selection != id) exit;

position_x_creation = (obj_interfaz_controller.grid_draw_active) ? 190 + (global.grid_width / 2) + global.grid_width * floor((global.position_cursor_x - 190) / global.grid_width) : global.position_cursor_x;
position_y_creation = (obj_interfaz_controller.grid_draw_active) ? 290 + (global.grid_height / 2) + global.grid_height * floor((global.position_cursor_y - 290) / global.grid_height) : global.position_cursor_y;
draw_sprite_ext(sprite_resource, 0, position_x_creation, position_y_creation, 5, 5, 0, c_white, 1);