/// @description

var _xx, _yy;
do{
	_xx = x + random_range(-sprite_width * 3, sprite_width * 3);	
	_yy = y + random_range(-sprite_height * 3, sprite_height * 3);	
	
}until(_xx >= 190 && _xx <= obj_interfaz_controller.lenght_level_width- 256 && _yy >= 290 && _yy <= obj_interfaz_controller.lenght_level_height);

instance_create_depth(_xx, _yy, depth - 1, enemy_create);

alarm[0] = game_get_speed(gamespeed_fps) * time_respawn;