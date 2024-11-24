/// @description 

if(global.play_mockup) exit;

if(movement_pointer){
	movement_pointer = false;
	image_blend = c_white;
	global.action = false;
	exit;
}

if(global.action) exit;

if(!selection){
	for(var _index = 0; _index < instance_number(obj_enemigo); _index ++){
		var _enemy = instance_find(obj_enemigo, _index);
		if(variable_instance_exists(_enemy, "selection"))
			_enemy.selection = false;
		
	}
	alarm[0] = 10;
}

if(!instance_exists(access_fast)){
	access_fast = instance_create_depth(x, y, depth, obj_controller_accesos_rapidos);
	access_fast.element = id;
}else 
	instance_destroy(access_fast);
