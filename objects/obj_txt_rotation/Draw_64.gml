draw_set_color(c_black); // Color negro para el texto
draw_text(_x_alpha-90, _y_alpha, "Rotacion:");

draw_set_color(c_black); 
draw_roundrect(_x_alpha-45 , _y_alpha-25, _x_alpha+45, _y_alpha+25, 1);

// Dibuja el texto ingresado
draw_set_color(c_black); // Cambia el color del texto a negro

draw_text(_x_alpha,_y_alpha, texto); // Dibuja el texto ingresado

if (activo) {
   draw_text(_x_alpha + string_width(texto), _y_alpha + 5, "|");  // Muestra un cursor si está activo
	
	
}
