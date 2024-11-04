/// @description dibujar vida y demas

draw_self();

draw_set_color(c_red);
draw_rectangle(x - life / 2 / life_divisor,
			   y - sprite_height * 0.65,
			   x + life / 2 / life_divisor,
			   y - sprite_height * 0.80,0);