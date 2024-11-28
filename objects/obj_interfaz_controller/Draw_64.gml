/// @description 
//dibujar los paneles de la GUI


if(global.play_mockup) exit;

if(!variable_global_exists("width") && !variable_global_exists("height")) exit;


var _border = 5;
draw_set_font(fnt_text_resources);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);



if(panel_top_active){
	draw_sprite(spr_rectangulo_panel1, 0, 0, 0);
	draw_set_color(c_black);
	draw_line_width(350, 0, 350, 210, 2);
	draw_text(175, 100, global.path);
	
	if(index_file_control_selection != -1){
		draw_set_color(c_purple);
		draw_rectangle(10 + 48 * index_file_control_selection, 25,
					   10 + 48 * (index_file_control_selection +1),
					   75, false);
	}
	draw_sprite_ext(spr_file_controls, 0, 10, 25, 3, 3, 0, c_white, 1);
}



if(panel_left_active){
	draw_sprite(spr_rectangulo_panel_left, 0, 0, 210);
	
	if(index_mockup_selection != -1){
		draw_set_color(c_maroon);
		draw_rectangle(0, 210 + 200 * index_mockup_selection, 
					   285, 
					   210 + 200 * (index_mockup_selection + 1),
					   false);
	}
	
	
	for(var _index = 0; _index <= global.index_list; _index ++){
		draw_set_color(c_black);
		draw_rectangle( 20, 230 + 200 * _index, 265, 380 + 200 * _index, 0);
	
		if(sprite_exists(global.rooms_list[_index].image)){
		
			draw_sprite_ext(global.rooms_list[_index].image, 0, 25, 232.5 + 200 *_index,
							235 / display_get_gui_width(), 155 / display_get_gui_height(), 0, c_white, 1);	
			
			draw_text(140, 400 + 200 * _index, global.rooms_list[_index].name);
		}
	}
	
}




draw_set_color(c_black);
/*
draw_text(global.width / 2, global.height /2,string(device_mouse_x_to_gui(0)) + "/" + string(device_mouse_y_to_gui(0)));
draw_text(global.width / 2, global.height /2 + 200,string(mouse_x) + "/" + string(mouse_y));
*/