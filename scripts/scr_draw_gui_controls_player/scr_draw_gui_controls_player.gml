
function scr_draw_gui_controls_player(_type){
	switch(_type){
		case MOVEMENTYPE.JOYSTICK:
			draw_sprite_ext(spr_base_joystick, 0, joystick_x, joystick_y, 2, 2, 0, c_white, 0.5);
			draw_sprite_ext(spr_joystick, 0, joystick_x + movement_x, joystick_y + movement_y, 2, 2, 0, c_white, 0.5);
			break;
		case MOVEMENTYPE.PAD:
			draw_sprite_ext(spr_movement_pad, 0, 500, 900, 8, 8, 0, c_white, 1);
			break;
	}

}