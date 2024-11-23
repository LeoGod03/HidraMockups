/// @description 
//dibujar los paneles de la GUI

if(global.play_mockup) exit;

if(!variable_global_exists("width") && !variable_global_exists("height")) exit;


var _border = 5;
draw_set_font(fnt_panel);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
if(panel_top_active){
	draw_sprite(spr_rectangulo_panel1, 0, 0, 0);
	draw_text(global.width / 2,  global.height * 0.1, "Panel 1");
	draw_set_color(c_black);
	draw_line_width(350, 0, 350, 210, 2);
}

if(panel_left_active){
	draw_sprite(spr_rectangulo_panel_left, 0, 0, 210);
	draw_text(150, 1080 / 2, "Panel left");
	
	
	for(var _index = 0; _index <= global.index_list; _index ++){
		draw_set_color(c_black);
		draw_rectangle( 20, 230 + 200 * _index, 265, 380 + 200 * _index, 0);
	
		if(sprite_exists(global.rooms_list[_index].image)){
		
			draw_sprite_ext(global.rooms_list[_index].image, 0, 25, 232.5 + 200 *_index,
							245 / 1920, 150 / 1080, 0, c_white, 1);	
						
		}
	}
	
}




draw_set_color(c_black);
/*
draw_text(global.width / 2, global.height /2,string(device_mouse_x_to_gui(0)) + "/" + string(device_mouse_y_to_gui(0)));
draw_text(global.width / 2, global.height /2 + 200,string(mouse_x) + "/" + string(mouse_y));
*/