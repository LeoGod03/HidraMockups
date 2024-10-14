function scr_movement_keyboards(){
	
	depth = -y;
	var _x_component = (keyboard_check(vk_right) - keyboard_check(vk_left));
	var _y_component = (keyboard_check(vk_down) - keyboard_check(vk_up));

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