draw_set_color(c_black); // Color negro para el texto
draw_text(_x_scale-100, _y_scale, "Posicion Y:");

draw_set_color(c_black); 
draw_roundrect(_x_scale-45 , _y_scale-25, _x_scale+45, _y_scale+25, 1);

draw_text(_x_scale,_y_scale, texto); // Dibuja el texto ingresado

if (activo) {
   draw_text(_x_scale + string_width(texto), _y_scale + 5, "|");  // Muestra un cursor si está activo	
}
