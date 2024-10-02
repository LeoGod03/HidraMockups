draw_set_color(c_black); // Color negro para el texto
draw_text(global.width * 0.845, global.height * 0.45, "Alpha:");

draw_set_color(c_black); 
draw_roundrect(global.width * 0.82, (global.height * 0.36) + 120, global.width * 0.87, (global.height * 0.41) + 120, 1);

// Dibuja el texto ingresado
draw_set_color(c_black); // Cambia el color del texto a negro
var _text_x = (global.width * 0.82) + 50; // Ajustar la posición X dentro del rectángulo
var _text_y = ((global.height * 0.36) + 120 )+25; // Ajustar la posición Y dentro del rectángulo
draw_text(_text_x, _text_y, texto); // Dibuja el texto ingresado
