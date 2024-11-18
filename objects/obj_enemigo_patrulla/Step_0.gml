/// @description 


image_blend = (selection) ? c_blue : c_white;

array_size = array_length(points_path);

scr_change_direction_enemies();

if(!global.play_mockup) exit;

if(state == STATE.IDLE){
	
	if(!selection && !edit_points && array_size > 0){
		state = STATE.PATROL;
		point_x = points_path[0].x;
		point_y = points_path[0].y;
	}
	
}else if(state == STATE.PATROL){
	
	target = collision_line(x, y, collision_points[0], collision_points[1], obj_player, true, false);
	
	if(instance_exists(target)){
		index_path = 0;
		state = STATE.RUN;
	}
	
	if(!edit_points) // si no se estan editando puntos entonces patrulla
	{
		if(point_x == -1){
	
			index_path = (index_path + 1) % array_size;
			point_x = points_path[index_path].x;
			point_y = points_path[index_path].y;
		}
	
		if(point_distance(x ,y, point_x, point_y) > 1)
			move_towards_point(point_x, point_y, velocity);
		else{
			speed = 0;
			point_x = -1;
			point_y = -1;
		}
	
		direction =  point_direction(x ,y, point_x, point_y);
	}else
		speed = 0;
	
	
}else if(state == STATE.RUN){
	target = collision_line(x, y, collision_points[0], collision_points[1], obj_player, true, false);
	if(!instance_exists(target))
		state = STATE.IDLE;
	else
		move_towards_point(target.x, target.y, velocity);	
}

