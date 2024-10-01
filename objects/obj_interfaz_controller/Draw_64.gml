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



draw_set_color(c_black);
draw_text(global.width / 2, global.height /2,string(290 + global.grid_height * floor((global.position_cursor_y - 280) / global.grid_height) ));