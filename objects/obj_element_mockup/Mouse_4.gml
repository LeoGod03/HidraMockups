/// @description creación de sus accesos rápidos

if(global.play_mockup) exit;

if(movement_pointer){
	movement_pointer = false;
	image_blend = c_white;
	global.action = false;
	exit;
}
if(global.action) exit;

if(!instance_exists(access_fast)){
	access_fast = instance_create_depth(x, y, depth, obj_control_accesos_rapidos);
	access_fast.element = id;
}else 
	instance_destroy(access_fast);
