/// @description
if(!global.play_mockup) {
	alarm[0] = 1;
	exit;
}
var _xx, _yy;
do{
	_xx = x + random_range(-sprite_width * 3, sprite_width * 3);	
	_yy = y + random_range(-sprite_height * 3, sprite_height * 3);	
	
}until(_xx >= 0 && _xx <= obj_interfaz_controller.lenght_level_width && _yy >= 0 && _yy <= obj_interfaz_controller.lenght_level_height);

var _enemy = instance_create_depth(_xx, _yy, depth - 1, enemy_create);

array_push(child, _enemy);

alarm[0] = game_get_speed(gamespeed_fps) * time_respawn;