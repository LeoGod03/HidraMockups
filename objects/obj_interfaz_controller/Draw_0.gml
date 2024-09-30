/// @description 
if(grid_draw_active){
	var _pos_x = 0;
	var _pos_y = 150;
	draw_set_color(c_red);
	for(var _index = 0; _index <= count_grid_x; _index ++){
		draw_line_width(_pos_x, 145 , _pos_x, room_height, 2);
		_pos_x += global.grid_width;
	}
	for(var _index2 = 0; _index2 <= count_grid_y; _index2 ++){
		draw_line_width(0, _pos_y, room_width - 256, _pos_y, 2);
		_pos_y += global.grid_height;
	}
	
}