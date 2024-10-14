/// @description
draw_self();
/*
if(speed = 0) exit;
draw_set_color(c_blue);
draw_line_width(x, y, mouse_x, mouse_y, 2);
draw_text(x, y, string(direction));
*/

/*
if(!path_exists(path)) exit;
draw_set_color(c_blue);
draw_path(path, x, y, true);
*/
if(type_movement == -1) exit;

scr_draw_controls_player(type_movement);


