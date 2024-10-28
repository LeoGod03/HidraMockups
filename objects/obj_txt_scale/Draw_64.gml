draw_set_color(c_black); // Color negro para el texto
draw_text(_x_alpha+80, _y_alpha-50, "Escala:");
draw_text(_x_alpha-60, _y_alpha, "X:");
draw_text(_x_alpha+100, _y_alpha, "Y:");

//rectangulo uno
//draw_set_color(c_black); 
draw_roundrect(_x_alpha-45 , _y_alpha-25, _x_alpha+45, _y_alpha+25, 1);

// Dibuja el texto ingresado
//draw_set_color(c_black); // Cambia el color del texto a negro
draw_text(_x_alpha,_y_alpha, texto); // Dibuja el texto ingresado
if (activo_rectangulo_x ) {
   draw_text(_x_alpha + string_width(texto), _y_alpha + 5, "|");  // Muestra un cursor si está activo
	//draw_text_color(_x_alpha,_y_alpha+5,keyboard_string,c_black,c_black,c_black,c_black,1);   
}

//rectangulo 2
//draw_set_color(c_black); 
draw_text(_x_alpha+157,_y_alpha, texto2); // Dibuja el texto ingresado
draw_roundrect(_x_alpha+115 , _y_alpha-25, _x_alpha+200, _y_alpha+25, 1);
if (activo_rectangulo_y ) {
   draw_text(_x_alpha+157 + string_width(texto2), _y_alpha + 5, "|");  // Muestra un cursor si está activo
}

