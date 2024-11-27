/// @description

if(movement_pointer){
	x = global.position_cursor_x;
	y = global.position_cursor_y; 
}

if(!global.play_mockup) {
	state = STATE.IDLE;
	exit; 
}

if(direction <= 90 || direction >= 270)
	image_xscale = 1;
else
	image_xscale = -1;
			
y = clamp(y, 0, obj_interfaz_controller.lenght_level_height);
x = clamp(x, 0, obj_interfaz_controller.lenght_level_width);

if(variable_instance_exists(id, "sprites")){
	if(direction >= 45 && direction <= 135)
		sprite_index = sprites[0];
	else if(direction > 135 && direction <= 225)
		sprite_index = sprites[1];
	else if(direction > 225 && direction <= 315)
		sprite_index = sprites[2];
	else 
		sprite_index = sprites[3];
	
	
}



if(state == STATE.IDLE)
	scr_movements(type_movement);
else if(state == STATE.JUMP){
	
	if(fly){
		if(jump_distance <= jump_force * 4){
			y-= jump_force;
			jump_distance += jump_force;
		}else
			fly = false;
	}else{
		y += jump_force * 0.5;
		jump_distance -= jump_force * 0.5;
		if(jump_distance <= 0){
			jump_distance = 0;
			fly = true;
			state = STATE.IDLE;
		}
				
	}	
}else if(state == STATE.ATTACK){
	if(!push){
		push = true;
		effect_create_above(ef_flare, x + lengthdir_x(range / 2, direction), y + lengthdir_y(range / 2, direction), 0.25, c_red);
		alarm[6] = game_get_speed(gamespeed_fps) * 0.25;
		with(obj_enemigo){
			if(collision_circle(other.x + lengthdir_x(other.range / 2, other.direction),
								other.y + lengthdir_y(other.range / 2, other.direction),
								other.range / 2, obj_enemigo, true, false) == id){
				life -= 10;						
			}
		}
	}
}


