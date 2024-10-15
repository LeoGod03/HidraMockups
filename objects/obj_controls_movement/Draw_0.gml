/// @description 

if(global.id_selection != id) exit;

position_x_creation = (color == c_lime) ? instance_nearest(global.position_cursor_x, global.position_cursor_y, obj_player).x: global.position_cursor_x;
position_y_creation = (color == c_lime) ? instance_nearest(global.position_cursor_x, global.position_cursor_y, obj_player).y: global.position_cursor_y;
draw_sprite_ext(sprite_resource, 0, position_x_creation, position_y_creation, 1.5, 1.5, 0, color, 1);