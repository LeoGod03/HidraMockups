/// @description 
if(selection){
	draw_set_alpha(0.5);
	draw_set_color(c_dkgray);
	draw_roundrect(position_x - width / 2, position_y - height / 2, position_x + width / 2, position_y + height / 2, 0);
}
draw_set_alpha(1);
draw_sprite_ext(sprite_resource, 0, position_x, position_y, 2.5, 2.5, 0, c_white, 1);

// dar efecto CSS jajaja

draw_set_color(c_black);
draw_line_width_color(position_x - width /2 + 5, position_y - height / 2, position_x - width / 2 + 5, position_y + height / 2, 5, c_black, c_dkgray);
//dibujamos el texto de informacion

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_text_resources);
draw_set_color(c_purple);
draw_roundrect(position_x - width / 2, position_y + 50, position_x + width / 2, position_y + 100, 0);
draw_set_color(c_fuchsia);
draw_roundrect(position_x - width / 2 + global.border, position_y + 50 +  global.border, position_x + width / 2 - global.border, position_y + 100 - global.border, 0);
draw_set_color(c_white);
draw_text(position_x, position_y + 75, text_info);