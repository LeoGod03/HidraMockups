/// @description 
draw_set_alpha((global.index_column == index_selection) ? 0.3 : 1);
draw_set_font(fnt_text_resources);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_color(c_black);
draw_roundrect(position_x - length_width / 2, position_y - 20, position_x + length_width / 2, position_y + 20, 0);

draw_set_color((selection) ? c_aqua : c_green);
draw_roundrect(position_x - length_width / 2 + border, position_y - 20 + border, position_x + length_width / 2 - border, position_y + 20 - border, 0);

draw_set_color(c_white);

draw_text(position_x, position_y, text_info);
draw_set_alpha(1);