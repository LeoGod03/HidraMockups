draw_set_color(c_black); // Color negro para el texto
draw_text(_x_scale-90, _y_scale, "Scale X:");

draw_set_color(c_black); 
draw_roundrect(_x_scale-45 , _y_scale-25, _x_scale+45, _y_scale+25, 1);

//Dibujar un cuadrado
draw_text(_x_scale+100, _y_scale, "Negativo:");
draw_rectangle(_x_scale+150, _y_scale-10, _x_scale+170, _y_scale+10, 1);
draw_text(_x_scale+160, _y_scale, ch_activado);

// Dibuja el texto ingresado
draw_set_color(c_black); // Cambia el color del texto a negro

draw_text(_x_scale,_y_scale, texto); // Dibuja el texto ingresado

if (activo) {
   draw_text(_x_scale + string_width(texto), _y_scale + 5, "|");  // Muestra un cursor si está activo	
}
