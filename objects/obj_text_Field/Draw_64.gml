draw_set_color(c_black); // Color negro para el texto
draw_text(_x_text_field - 90, _y_text_field, nombre_textfield + ":");


draw_set_color(c_black); 
draw_roundrect(_x_text_field-45 , _y_text_field-25, _x_text_field+45, _y_text_field+25, 1);

// Dibuja el texto ingresado
draw_set_color(c_black); // Cambia el color del texto a negro

draw_text(_x_text_field,_y_text_field, texto); // Dibuja el texto ingresado

if (activo) {
   draw_text(_x_text_field + string_width(texto), _y_text_field + 5, "|");  // Muestra un cursor si está activo
	
	
}