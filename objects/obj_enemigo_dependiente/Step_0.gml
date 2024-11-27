/// @description 

if(movement_pointer){
	x = global.position_cursor_x;
	y = global.position_cursor_y; 
}


scr_change_direction_enemies();


if(!instance_exists(mother) || !global.play_mockup) exit;


if(state == STATE.IDLE){
	
	x = mother.x + mother.sprite_width * x_vector;
	y = mother.y + mother.sprite_height * y_vector;
	direction = mother.direction;
	
}else if(state == STATE.RUN){
	if(!instance_exists(target) || distance_to_object(target) > range)
		state = STATE.RETURN;
	else
		move_towards_point(target.x, target.y, velocity);
	
}else if(state == STATE.RETURN){
	if(instance_exists(mother)){
		if(point_distance(x, y,
						mother.x + mother.sprite_width * x_vector,
						mother.y + mother.sprite_height * y_vector) > 1){
							
			move_towards_point(mother.x + mother.sprite_width * x_vector,
							   mother.y + mother.sprite_height * y_vector,
							   velocity);
		}else
			state = STATE.IDLE;
	}
}