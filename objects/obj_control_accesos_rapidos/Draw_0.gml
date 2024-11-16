/// @description 
if(element == noone) exit;
//draw_text(x, y, string(index_selection));
draw_set_color(c_white);
draw_rectangle(x - SIZEPREF, y, x + SIZEPREF , y - SIZEPREF * 0.5, 0);

//Se mueve el cuadrito dependiendo de la selección
if(index_selection != -1){ 
	draw_set_color(c_gray);
	draw_rectangle(x - SIZEPREF + SIZEPREF * 0.5 * index_selection,
				   y,
				   x - SIZEPREF + SIZEPREF * 0.5 * (index_selection + 1),
				   y - SIZEPREF * 0.5, 0);
}

//Se dibujan los iconos
for(var _index = 0; _index < 4; _index ++){
	draw_sprite_ext(spr_accesos_rapidos_icons, _index, x - SIZEPREF * 0.75 + 
					_index * SIZEPREF * 0.5, y - SIZEPREF * 0.25, 0.25, 0.25, 0, c_white,1);
}

