/// @description 
draw_set_color(c_green);
draw_rectangle(190, 290, lenght_level_width, lenght_level_height, 0);


if(grid_draw_active){
	var _pos_x = 190;
	var _pos_y = 290;
	draw_set_color(c_red);
	for(var _index = 0; _index <= count_grid_x; _index ++){
		draw_line_width(_pos_x, _pos_y , _pos_x, lenght_level_height, 2);
		_pos_x += global.grid_width;
	}
	for(var _index2 = 0; _index2 <= count_grid_y; _index2 ++){
		draw_line_width(190, _pos_y, lenght_level_width - 256, _pos_y, 2);
		_pos_y += global.grid_height;
	}
	
}