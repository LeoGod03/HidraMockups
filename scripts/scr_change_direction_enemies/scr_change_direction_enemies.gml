function scr_change_direction_enemies(){
	
	var _angle_radians = degtorad(direction); // Convertimos a radianes
	var _adjust_angle = (direction % 90 == 0) ? range : range / sqrt(2); // normalizamos el rango

	collision_points[0] = x + _adjust_angle * cos(_angle_radians);
	collision_points[1] = y - _adjust_angle * sin(_angle_radians);

	var _index = floor((direction + 22.5) / 45) % 8; // encuentra el indice para saber a donde va xd
	sprite_index = sprites[_index];
	
	
}