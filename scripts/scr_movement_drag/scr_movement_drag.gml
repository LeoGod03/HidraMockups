function scr_movement_drag(){
	
	if(mouse_y < global.position_cursor_y) exit;
	
	if(mouse_x < global.position_cursor_x) exit;
	
	
	depth = -y;
	var _distance_to_movement = 0;
	
	if(mouse_check_button(mb_left)){
		_distance_to_movement = point_distance(x, y, mouse_x, mouse_y);
	
		_distance_to_movement = clamp(_distance_to_movement, 0, 96);
		
		
	
		/*
		if(distance_to_movement > 45 && distance_to_movement < 80)
			sprite_index = spr_zombie_walk;
		else if(distance_to_movement >= 80)
			sprite_index = spr_zombie_run;
		*/	
	
		if(_distance_to_movement > 45){
			direction = round(point_direction(x, y, mouse_x, mouse_y));
			if(place_free(x + lengthdir_x(_distance_to_movement, direction), y + lengthdir_y(_distance_to_movement, direction)))
				speed = velocity + (2 * (_distance_to_movement >= 80));	
			else
				speed = 0;	
		
		}	
	}else{
		//sprite_index = spr_zombie_idle;
		speed = 0;
	}
	
	
}