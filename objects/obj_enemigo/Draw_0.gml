/// @description dibujar vida y demas

draw_self();

draw_set_color(c_black);
draw_roundrect(x - life / 2 / life_divisor,
			   y - sprite_height * 0.75,
			   x + life / 2 / life_divisor,
			   y - sprite_height * 0.80,0);