/// @description 
draw_set_font(fnt_text_resources);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var _text_x = position_x - string_width(text_info) * 0.75 -  width / 2 * factor_font;


//dibujamos el contorno
draw_set_color(c_black);

draw_text(_text_x, position_y, text_info);

draw_roundrect(position_x - width / 2 * factor_font,
			   position_y - 30,
			   position_x + width / 2 * factor_font,
			   position_y + 30,0);
			   
// dibujamos caja
draw_set_color((selection) ? c_aqua : c_white);
draw_roundrect(position_x - width / 2 * factor_font + border,
			   position_y - 30 + border,
			   position_x + width / 2 * factor_font - border,
			   position_y + 30 - border,0);
			   
//dibujamos contenido 
draw_set_color(c_black);
draw_text(position_x, position_y,string(selection_index + 1) + "." + selection_text);
//draw_text(1000, 900, string(device_mouse_y_to_gui(0) - position_y - 30) + "/" + string(selection_index_prev));



if(!show_list) exit;
// dibujamos lista 
var _position_y = position_y + 30;
draw_set_color(c_black);
draw_roundrect(position_x - width / 2 * factor_font,
               _position_y, 
			   position_x + width / 2 * factor_font,
			   _position_y + list_heigth,
			   0);
			   
draw_set_color(c_dkgray);
draw_roundrect(position_x - width / 2 * factor_font,
               _position_y, 
			   position_x + width / 2 * factor_font,
			   _position_y + list_heigth,
			   0);
			   
// dibujamos el rectangulo selección 
draw_set_color(c_maroon);
draw_roundrect(position_x - width / 2 * factor_font,
			   position_y + 30 * (selection_index_prev + 1),
			   position_x + width / 2 * factor_font,
			   position_y + 30 + 30 * (selection_index_prev + 1),
			   0);

draw_set_color(c_white);
var _yy = _position_y + 15;
for(var _index = 0; _index < array_length(options_list); _index ++){
	draw_text(position_x, _yy,string(_index + 1) + "." + options_list[_index]);
	_yy += 30;
}
