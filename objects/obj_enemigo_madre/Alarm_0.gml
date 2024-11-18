/// @description Elegir direccion
if(!global.play_mockup) {
	alarm[0] = 1;
	exit;
}

randomize();
do{
	
	direction = directions[irandom(7)];
  

	distance_to_movement = random_range(SIZEPREF * 8, SIZEPREF * 16);

	change_direction = false;

	state = STATE.PATROL;

	point_x = x + lengthdir_x(distance_to_movement, direction);
	point_y = y + lengthdir_y(distance_to_movement, direction);
	
}until(point_x >= 0 && point_x <= obj_interfaz_controller.lenght_level_width && point_y >= 0 && point_y <= obj_interfaz_controller.lenght_level_height);