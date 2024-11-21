/// @description 

draw_set_font(fnt_panel);

draw_set_halign(fa_left);
draw_set_valign(fa_bottom);


draw_sprite_ext(spr_logo_hydra, 0, 100, 950, 0.1, 0.1, 0, c_white, 1);

draw_set_color(c_black);
draw_text(152, 977, word);

draw_set_color(c_orange);
draw_text(150, 975, word);


draw_set_color(c_black);
draw_text(1750, 50, "V:" + GM_version);


draw_set_font(fnt_titles);

for(var _index = 0; _index < array_length(title); _index ++){
	draw_set_color(colors[_index]);
	draw_text(650 + 60 * _index, 200, title[_index]);
}
