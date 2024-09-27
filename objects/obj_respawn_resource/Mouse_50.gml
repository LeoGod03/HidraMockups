/// @description 
if(global.id_selection == id){
	instance_create_depth(position_x_creation, position_y_creation, depth -1, object_respawn);
	global.id_selection = noone;	
	alarm[1] = 5;
}
if(instance_exists(global.id_selection)) exit;

if(!selection) exit;

global.selection = true;
alarm[0] = 5;