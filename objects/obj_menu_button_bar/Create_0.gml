/// @description
factor_font = font_get_size(fnt_text_resources);
factor_text = 8;
length_width = string_length(text_info) * factor_font;

if(neighbor == noone) exit;


neighbor_instance = instance_create_depth(0, 0 , -1, neighbor);
alarm[0] = 10;
