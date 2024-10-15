if (mouse_check_button_pressed(mb_left)) {
    // Verifica si el mouse hace clic dentro del área del campo de texto
    if ((device_mouse_x_to_gui(0) >= _x_alpha-45 && device_mouse_x_to_gui(0) <= _x_alpha+45) && 
        (device_mouse_y_to_gui(0) >= _y_alpha-25 && device_mouse_y_to_gui(0) <= _y_alpha+25)) {
        activo = true;  // Activar el campo de texto
		
  } else {
        activo = false;  // Desactivar el campo si se hace clic fuera
    }
}
//Dibujamos dentro del txt
if (activo) {
    if (keyboard_lastchar != "" && string_length(texto)< num_ingresado_permitidos) {
		 if (keyboard_lastchar >= "0" && keyboard_lastchar <= "1") {
            texto += keyboard_lastchar; // Agrega el carácter ingresado al texto
        }
        keyboard_lastchar = ""; // Limpia el carácter del teclado
    }
	
	if (keyboard_check_pressed(vk_backspace)) {
         if (string_length(texto) > 0) {
            texto = string_delete(texto, string_length(texto), 1); // Elimina el último carácter
        }
    }
}