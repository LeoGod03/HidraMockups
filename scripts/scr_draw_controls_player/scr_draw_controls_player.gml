function scr_draw_controls_player(_type){
	
	switch(_type){
		case MOVEMENTYPE.POINTCLICK:
			draw_sprite_ext(spr_movement_click, 0, x, y - sprite_height * 0.75, 0.25, 0.25, 0, c_white, 1);
			if(!path_exists(path)) exit;
			draw_set_color(c_blue);
			draw_path(path, x, y, true);
			break;
		case MOVEMENTYPE.DRAGMOUSE:
			draw_sprite_ext(spr_movement_drag, 0, x, y - sprite_height * 0.75, 0.25, 0.25, 0, c_white, 1);
			if(speed = 0) exit;
			draw_set_color(c_blue);
			draw_line_width(x, y, mouse_x, mouse_y, 2);
			draw_text(x, y, string(direction));
			
			break;
			
		case MOVEMENTYPE.JOYSTICK:
			draw_sprite_ext(spr_movement_joystick, 0, x, y - sprite_height * 0.75, 0.25, 0.25, 0, c_white, 1);
			break;
		
		case MOVEMENTYPE.PAD:
			draw_sprite_ext(spr_movement_pad, 0, x, y - sprite_height * 0.75, 0.25, 0.25, 0, c_white, 1);
			break;
	}

}