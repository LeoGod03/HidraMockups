if (mouse_check_button_pressed(mb_left)) {
    // Verifica si el mouse hace clic dentro del área del campo de texto
    if ((device_mouse_x_to_gui(0) >= _x_alpha-45 && device_mouse_x_to_gui(0) <= _x_alpha+45) && 
        (device_mouse_y_to_gui(0) >= _y_alpha-25 && device_mouse_y_to_gui(0) <= _y_alpha+25)) {
        activo_rectangulo_x  = true;  // Activar el campo de texto
		
  } else {
        activo_rectangulo_x  = false;  // Desactivar el campo si se hace clic fuera
    }
}
// Dibujamos dentro del campo de texto del 
if (activo_rectangulo_x ) {
    // Validamos si hay un carácter ingresado y si la longitud permite más caracteres
    if (keyboard_lastchar != "" && string_length(texto) < num_ingresado_permitidos) {
        // Validamos que el carácter sea un número
        if ((keyboard_lastchar >= "0" && keyboard_lastchar <= "9") || keyboard_lastchar == "-"|| keyboard_lastchar == "." ) {
            numero_ingresado_string += keyboard_lastchar;
           // numero_ingresado = real(numero_ingresado_string);
          if( string_count("-",numero_ingresado_string)<=1){
				if((numero_ingresado_string<= "0" && numero_ingresado_string >="6") || numero_ingresado=="."<=1){
						texto += keyboard_lastchar; // Agrega el carácter al texto solo si está dentro del rango	
				}
			
		  }
		  
		  /*
		   if (numero_ingresado <= 359 &&  !(numero_ingresado_string="00") ) {
                texto2 += keyboard_lastchar; // Agrega el carácter al texto solo si está dentro del rango
            } else {
                // Si se excede 359, remueve el último carácter añadido
                numero_ingresado_string = string_copy(numero_ingresado_string, 1, string_length(numero_ingresado_string) - 1);
            }*/
        }
        keyboard_lastchar = ""; // Limpia el carácter del teclado
    }

if (keyboard_check_pressed(vk_backspace)) {
        if (string_length(texto) > 0) {
            texto = string_delete(texto, string_length(texto), 1); // Elimina el último carácter de texto
            numero_ingresado_string = string_delete(numero_ingresado_string, string_length(numero_ingresado_string), 1); // Elimina el último carácter del número
            // Actualizar numero_ingresado basado en el nuevo string
            if (string_length(numero_ingresado_string) > 0) {
                numero_ingresado = real(numero_ingresado_string);
            } else {
                numero_ingresado = 0; // Si el string está vacío, reinicia a 0
            }
        }
    }
}


//Para nuestro segundo cudro
if (mouse_check_button_pressed(mb_left)) {
    // Verifica si el mouse hace clic dentro del área del campo de texto
    if ((device_mouse_x_to_gui(0) >= _x_alpha+115 && device_mouse_x_to_gui(0) <= _x_alpha+200) && 
        (device_mouse_y_to_gui(0) >= _y_alpha-25 && device_mouse_y_to_gui(0) <= _y_alpha+25)) {
        activo_rectangulo_y  = true;  // Activar el campo de texto
		
  } else {
        activo_rectangulo_y  = false;  // Desactivar el campo si se hace clic fuera
    }
}
// Dibujamos dentro del campo de texto del cuadro 2
if (activo_rectangulo_y ) {
    // Validamos si hay un carácter ingresado y si la longitud permite más caracteres
    if (keyboard_lastchar != "" && string_length(texto2) < num_ingresado_permitidos_2) {
        // Validamos que el carácter sea un número
        if (keyboard_lastchar >= "0" && keyboard_lastchar <= "9") {
            numero_ingresado_string_2 += keyboard_lastchar;
            numero_ingresado_2 = real(numero_ingresado_string_2);
            if (numero_ingresado_2 <= 359 &&  !(numero_ingresado_string_2="00") ) {
                texto2 += keyboard_lastchar; // Agrega el carácter al texto solo si está dentro del rango
            } else {
                // Si se excede 359, remueve el último carácter añadido
                numero_ingresado_string_2 = string_copy(numero_ingresado_string_2, 1, string_length(numero_ingresado_string_2) - 1);
            }
        }
        keyboard_lastchar = ""; // Limpia el carácter del teclado
    }
    
    // Permitir borrar el último carácter si se presiona "Backspace"
    if (keyboard_check_pressed(vk_backspace)) {
        if (string_length(texto2) > 0) {
            texto2 = string_delete(texto2, string_length(texto2), 1); // Elimina el último carácter de texto
            numero_ingresado_string_2 = string_delete(numero_ingresado_string_2, string_length(numero_ingresado_string_2), 1); // Elimina el último carácter del número
            // Actualizar numero_ingresado basado en el nuevo string
            if (string_length(numero_ingresado_string_2) > 0) {
                numero_ingresado_2 = real(numero_ingresado_string_2);
            } else {
                numero_ingresado_2 = 0; // Si el string está vacío, reinicia a 0
            }
        }
    }
}
