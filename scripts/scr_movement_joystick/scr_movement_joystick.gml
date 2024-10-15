function scr_movement_joystick(){
	
	if(device_mouse_check_button_pressed(0, mb_left)){
		if(device_mouse_x_to_gui(0) >= 290 && device_mouse_x_to_gui(0) <= global.width / 2 &&
		   device_mouse_y_to_gui(0) >= global.height / 2){
			activate = true;
			joystick_x = device_mouse_x_to_gui(0);
			joystick_y = device_mouse_y_to_gui(0);
		}
	}		
	
	if(activate){
		
		if(device_mouse_check_button(0, mb_left)){
			
			position_x = device_mouse_x_to_gui(0);
			position_y = device_mouse_y_to_gui(0);
			
		}else
			activate = false;
		
		
		angle_joystick = point_direction(joystick_x, joystick_y , position_x, position_y);
		distance = point_distance(joystick_x, joystick_y, position_x, position_y);
		movement_x = dcos(angle_joystick) * min(128, distance);
		movement_y = -dsin(angle_joystick) * min(128, distance);
	
	}else{
		joystick_x = 450;
		joystick_y = 900;
		movement_x = 0;
		movement_y = 0;
		distance = 0;
		angle_joystick = 0;
		speed = 0;
	}
	
	if(distance >  5){
		direction = angle_joystick;	
		speed = velocity;
	}

}

