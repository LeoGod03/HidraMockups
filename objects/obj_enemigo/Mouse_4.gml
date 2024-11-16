/// @description creación de sus accesos rápidos

if(movement_pointer){
	movement_pointer = false;
	image_blend = c_white;
	exit;
}
if(instance_exists(access_fast)) exit;


access_fast = instance_create_depth(x, y, depth, obj_control_accesos_rapidos);
access_fast.element = id;
