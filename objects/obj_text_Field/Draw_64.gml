/// @description 
draw_set_font(fnt_text_resources);
draw_set_halign(fa_left);
draw_set_valign(fa_top);


draw_set_color(c_black); 
draw_roundrect(position_x + string_width(text_info), position_y,
			   position_x + string_width(text_info) + 100,
			   position_y + 35, 0);
			   
draw_set_color(c_white); 
draw_roundrect(position_x + string_width(text_info) + border, position_y + border,
			   position_x + string_width(text_info) + 100 - border,
			   position_y + 35 - border, 0);
			   


draw_set_color(c_black); 

draw_text(position_x + 5 + string_width(text_info), position_y + 7.5, text); // Dibuja el texto ingresado
draw_text(position_x, position_y  + 7.5, text_info);
if (!activate) exit; 
draw_text(position_x + string_width(text_info) + 10 + string_width(text), position_y + 7.5, "|");  // Muestra un cursor si está activo
