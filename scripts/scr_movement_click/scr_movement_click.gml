function scr_movement_click(){
	if(mouse_y < global.position_cursor_y) exit;
	
	if(mouse_x < global.position_cursor_x) exit;
	
	if(!mouse_check_button(mb_left)) exit;
	
	if(place_free(global.position_cursor_x, global.position_cursor_y))
	{
		if(path_exists(path))
			path_delete(path);
		
		path = path_add();	
		mp_potential_path(path, global.position_cursor_x,  global.position_cursor_y, 15, 8, false);
		path_start(path, velocity, path_endaction, false);
		//sprite_index = spr_globin_run;
	}

}