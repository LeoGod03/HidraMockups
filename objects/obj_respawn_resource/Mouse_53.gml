/// @description 



if(global.id_selection == id){
	var _creation = instance_create_depth(position_x_creation, position_y_creation, depth -1, object_respawn);
	global.id_selection = noone;	
	global.selection = false;
	global.action = false;
	exit;
}
if(global.action) exit;
if(instance_exists(global.id_selection)) exit;

if(!selection) exit;

global.action = true;
global.selection = true;
global.id_selection = id;