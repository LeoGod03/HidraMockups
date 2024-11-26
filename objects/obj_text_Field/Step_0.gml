//Verifica el que el puntero este dentro del recueadro
if (mouse_check_button_pressed(mb_left)) {
    // Verifica si el mouse hace clic dentro del área del campo de texto
    if ((device_mouse_x_to_gui(0) >= _x_text_field-45 && device_mouse_x_to_gui(0) <= _x_text_field+45) && 
        (device_mouse_y_to_gui(0) >= _y_text_field-25 && device_mouse_y_to_gui(0) <= _y_text_field+25)) {
        activo = true;  // Activar el campo de texto
		
	}else {
        activo = false;  // Desactivar el campo si se hace clic fuera
    }
}

if (activo) {
	if (keyboard_lastchar != "") {
		if(scr_numero_decimal(valor_minimo) || scr_numero_decimal(valor_maximo)){
			if (keyboard_lastchar >= "0" && keyboard_lastchar <= "9" && string_count(".", texto) == 0) {
			        //if (string_length(texto) < num_ingresado_permitidos) {
			            texto += keyboard_lastchar; // Agregar '0' o '1' antes del punto
			        
			    }
    
			    // Permitir un punto decimal si no se ha añadido antes y el texto contiene "0"
			    else if (keyboard_lastchar == "." && string_count(".", texto) == 0 && (texto >= "0" && texto <6)) {
			        texto += keyboard_lastchar; // Agregar el punto decimal
			    }
    
			    // Permitir dígitos del '0' al '9' después del punto si hay un punto en el texto
			    else if (keyboard_lastchar >= "0" && keyboard_lastchar <= "9" && string_count(".", texto) == 1) {
			        var _posicion_punto = string_pos(".", texto);
			        var _num_decimales = string_length(texto) - _posicion_punto;
        
			        // Permitir hasta tres dígitos después del punto
			        if (_num_decimales < 3) {
			            texto += keyboard_lastchar;
			        }
			    }
    
			    // Limpiar el carácter del teclado para la siguiente entrada
			    keyboard_lastchar = "";
		
		}else{
		
	    // Verificar si el carácter es '0' o '9'
	    if (keyboard_lastchar >= "0" && keyboard_lastchar <="9") {
	            texto += keyboard_lastchar; // Agregar '0' o '1' antes del punto
	    }    
	 //   Limpiar el carácter del teclado para la siguiente entrada
	    keyboard_lastchar = "";
	}
}
	if (keyboard_check_pressed(vk_backspace)) {
	         if (string_length(texto) > 0) {
	            texto = string_delete(texto, string_length(texto), 1); // Elimina el último carácter
	        }
	}
}



if (string_length(texto) && !activo) {
    var _valor = real(texto);
    if (texto >= valor_minimo && texto <= valor_minimo) {
       
    }else{
		show_message("El rango permitido es de " + string(valor_minimo) + " a " + string(valor_maximo));
         texto = "";
	}
}


if(activo == false && !(texto=="")){
	retornar=true;
}