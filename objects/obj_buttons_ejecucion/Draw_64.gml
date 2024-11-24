/// @description 


draw_set_color(c_black);
draw_roundrect(1300, top_y, 1450, buttom_y, false);
draw_set_color(c_white);
draw_roundrect(1300 + border, top_y + border, 1450 - border, buttom_y - border, false);


if(index_selection != -1){

	draw_set_color(c_red);
	draw_roundrect(1300 + SIZEPREF * 3 * index_selection + border,
				   top_y + border,
				   1300 + SIZEPREF * 3.15 * (index_selection + 1) - border,
				   buttom_y - border,
				   false);
}
for(var _index = 0; _index < 3; _index ++){
	draw_sprite_ext(spr_controles_generales_mockup, _index, 
					1330 + SIZEPREF * 3 * _index,
					top_y + 25, 2, 2, 0, c_white,
					(_index != 2) ? ((_index == 0) ? !global.play_mockup + 0.25 : global.play_mockup + 0.25): 1);	
}


draw_text(1920, 700, string(index_selection));