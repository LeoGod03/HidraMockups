/// @description
draw_self();
draw_set_color(c_blue);
draw_line_width(x, y, x + lengthdir_x(range, direction), y + lengthdir_y(range, direction), 2);

if(type_movement == -1) exit;

scr_draw_controls_player(type_movement);


