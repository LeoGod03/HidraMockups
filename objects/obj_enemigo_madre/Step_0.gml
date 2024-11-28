/// @description
if(movement_pointer){
	x = global.position_cursor_x;
	y = global.position_cursor_y; 
}


scr_change_direction_enemies();

if(!global.play_mockup) exit;

if(life < 1 )
	state = STATE.DEAD;

if(state != STATE.DEAD){
	target = collision_line(x, y, collision_points[0], collision_points[1], obj_player, true, false);

	if(instance_exists(target)){
	
	
		array_foreach(child, function(_element, _index){
			_element.state = STATE.RUN
			_element.target = target;
		});
		
		if(action == 0){
			change_direction = false;
			state = STATE.ATTACK;
		}
		
	}
}
if(state == STATE.IDLE){
	speed = 0;
	if(!change_direction){
		randomize();
		change_direction = true;
		alarm[0] = game_get_speed(gamespeed_fps) * irandom_range(2, 5);
	}
		
}else if(state == STATE.PATROL){
	
	
	if(distance_to_point(point_x, point_y) > 2)
		mp_potential_step(point_x, point_y, velocity, false);
	else{
		// creacion de hijos
		speed = 0;
		if(array_length(child) < action){
			randomize();
			var _posibility = choose(1,2,3,4,5);
			// tiene la posibilidad de crear hijos de 1/5
			if(_posibility == 2){
				
				//creamos el hijo a uno de sus costados
				var _xx, _yy;
				var _vector_x, _vector_y;
				do{
					_xx = choose(-sprite_width,sprite_width);
					_yy = choose(-sprite_height,sprite_height);
					_vector_x = (_xx < 0) ? -1 : 1;
					_vector_y = (_yy < 0) ? -1 : 1;
				}until(!scr_search_array(points_childs, [_vector_x, _vector_y]));
				
				var _child = instance_create_depth(x + _xx, y + _yy, depth - 1, obj_enemigo_dependiente);
				_child.x_vector = _vector_x;
				_child.y_vector = _vector_y;
				
				_child.mother = id;
				array_push(child, _child);
				array_push(points_childs,[_vector_x, _vector_y]);
			}
		}
		state = STATE.IDLE;
		
	}
	
}else if(state == STATE.ATTACK){
	target = collision_line(x, y, collision_points[0], collision_points[1], obj_player, true, false);
	if(!instance_exists(target))
		state = STATE.IDLE;
	else
		mp_potential_step(target.x, target.y, velocity, false);	
	
}
