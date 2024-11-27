/// @description 

if(global.id_selection == id){
	
	var _button = instance_create_depth(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), -1, object_respawn);
	_button.sprite_index = sprite_resource;
	_button.image_xscale = 5;
	_button.image_yscale = 5;
	
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