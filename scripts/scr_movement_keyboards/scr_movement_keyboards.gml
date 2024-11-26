function scr_movement_keyboards(){
	
	depth = -y;
	var _up, _down, _left, _right;
	_up = false;
	_down = false;
	_left = false;
	_right = false;
	
	if(device_mouse_check_button(0, mb_left)){
		_up = device_mouse_x_to_gui(0) >= 310 && device_mouse_x_to_gui(0) <= 390 && device_mouse_y_to_gui(0) >= 785 && device_mouse_y_to_gui(0) <= 865;
		_down = device_mouse_x_to_gui(0) >= 310 && device_mouse_x_to_gui(0) <= 390 && device_mouse_y_to_gui(0) >= 945 && device_mouse_y_to_gui(0) <= 1025;
		_left = device_mouse_x_to_gui(0) >= 230 && device_mouse_x_to_gui(0) <= 310 && device_mouse_y_to_gui(0) >= 865 && device_mouse_y_to_gui(0) <= 945;
		_right = device_mouse_x_to_gui(0) >= 400 && device_mouse_x_to_gui(0) <= 480 && device_mouse_y_to_gui(0) >= 865 && device_mouse_y_to_gui(0) <= 945;
	}
	var _x_component = ((keyboard_check(ord("D")) || _right) - (keyboard_check(ord("A")) || _left));
	var _y_component = ((keyboard_check(ord("S")) || _down) - (keyboard_check(ord("W")) || _up));

	var _length = sqrt(power(_x_component, 2) + power(_y_component, 2));
			
	if(_length != 0){
		image_speed = 1;
	
		var _x_speed = _x_component / _length;
		var _y_speed = _y_component / _length;
	
		if(place_free(x + _x_component * velocity, y + _y_component * velocity)){
			hspeed = _x_speed * velocity;
			vspeed = _y_speed * velocity;
		}else
			speed = 0;
	}else
		speed = 0;
		
	
	
}