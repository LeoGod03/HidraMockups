/// @description 
//dibujar los paneles de la GUI
if(!variable_global_exists("width") && !variable_global_exists("height")) exit;


var _border = 5;
draw_set_font(fnt_panel);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
if(panel_top_active){
	draw_sprite(spr_rectangulo_panel1, 0, 0, 0);
	draw_text(global.width / 2,  global.height * 0.1, "Panel 1");
}

if(panel_left_active){
	draw_sprite(spr_rectangulo_panel_left, 0, 0, 210);
	draw_text(150, 1080 / 2, "Panel left");
	draw_set_color(c_black);
	draw_rectangle( 20, 230, 265, 380, 0);
}




draw_set_color(c_black);
/*
draw_text(global.width / 2, global.height /2,string(device_mouse_x_to_gui(0)) + "/" + string(device_mouse_y_to_gui(0)));
draw_text(global.width / 2, global.height /2 + 200,string(mouse_x) + "/" + string(mouse_y));
*/