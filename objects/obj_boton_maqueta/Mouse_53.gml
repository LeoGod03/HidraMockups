/// @description
	
	if(device_mouse_x_to_gui(0) < x - sprite_width / 2 || device_mouse_x_to_gui(0) > x + sprite_width / 2) exit;
	if(device_mouse_y_to_gui(0) < y - sprite_height / 2 || device_mouse_y_to_gui(0) > y + sprite_height / 2) exit;

if(global.play_mockup){
	
	if(!instance_exists(obj_player)) exit;
	
	if(action == "Atacar")
		obj_player.state = STATE.ATTACK;
	else if (action == "Saltar")
		obj_player.state = STATE.JUMP;

	
}else{
	with(obj_panel_right){
		element = other.id;
		alarm[0] = 10;
	}
	
}