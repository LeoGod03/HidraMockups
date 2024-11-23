/// @description 

draw_set_font(font_text);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);


draw_set_color(c_black);
draw_roundrect(position_x - factor / 2, position_y - length_font * 1.5, position_x + factor / 2, position_y + length_font * 1.5, false);

draw_set_color(c_white);
draw_roundrect(position_x - factor / 2 + border, position_y - length_font * 1.5 + border, position_x + factor / 2 - border, position_y + length_font * 1.5 - border, false);

draw_set_color(selection_color);
draw_text(position_x, position_y, text_info);