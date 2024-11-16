/// @description 
if(!selection) exit;

if(place_meeting(global.position_cursor_x, global.position_cursor_y, obj_punto_path)) exit; // si no esta tocando punto

if(!edit_points) exit;

var _point = instance_create_depth(global.position_cursor_x, global.position_cursor_y, -room_height, obj_punto_path);
_point.enemy_father = id;
_point.number = array_size + 1;
array_push(points_path, _point);
