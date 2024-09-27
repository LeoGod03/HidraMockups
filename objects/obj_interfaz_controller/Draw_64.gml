/// @description 
//dibujar los paneles de la GUI

if(!variable_global_exists("width") && !variable_global_exists("height")) exit;


var _border = 5;
draw_set_font(fnt_panel);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
if(panel_top_active){
	
	draw_set_color(c_black);
	draw_rectangle(0, 0, global.width, global.height * 0.20, 0);
	draw_set_color(c_white);
	draw_rectangle(_border, _border, global.width - _border, global.height * 0.20 - _border, 0);
	draw_set_color(c_black);
	draw_text(global.width / 2,  global.height * 0.1, "Panel 1");
}

if(panel_right_active){
	
	draw_set_color(c_black);
	draw_rectangle(global.width * 0.8, global.height * 0.20, global.width, global.height, 0);
	draw_set_color(c_white);
	draw_rectangle(global.width * 0.8 + _border,global.height * 0.20 + _border, global.width - _border, global.height - _border, 0);
	draw_set_color(c_black);
	draw_text(global.width * 0.9,  global.height * 0.6, "Panel 2");
		
}


draw_set_color(c_black);
draw_text(global.width / 2, global.height /2, string(global.position_cursor_x) + "/" + string(global.position_cursor_y) + "/" + string(floor(global.position_cursor_x / global.grid_width)));