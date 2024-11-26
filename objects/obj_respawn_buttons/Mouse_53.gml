/// @description 

if(global.id_selection == id){
	
	//var _player = instance_nearest(global.position_cursor_x, global.position_cursor_y, obj_player);
	//_player.type_movement = type;
	global.id_selection = noone;	
	global.selection = false;
	global.action = false;
	exit;
	
}
if(global.action) exit;

if(instance_exists(global.id_selection)) exit;

if(!selection) exit;

global.selection = true;
global.id_selection = id;
global.action = true;