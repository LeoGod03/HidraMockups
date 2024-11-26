if (mouse_check_button_pressed(mb_left)) {
    // Verifica si el mouse hace clic dentro del área del campo de texto
    if ((device_mouse_x_to_gui(0) >= _x_scale-45 && device_mouse_x_to_gui(0) <= _x_scale+45) && 
        (device_mouse_y_to_gui(0) >= _y_scale-25 && device_mouse_y_to_gui(0) <= _y_scale+25)) {
        activo = true;  // Activar el campo de texto
		
  } else {
        activo = false;  // Desactivar el campo si se hace clic fuera
    }
}

//Dibujamos dentro del txt

if (activo) {
if (keyboard_lastchar != "") {
    numero_ingresado = keyboard_lastchar;
    
    if (keyboard_lastchar >= "0" && keyboard_lastchar <= "6" && string_count(".", texto) == 0) {
        if (string_length(texto) < num_ingresado_permitidos) {
            texto += keyboard_lastchar; // Agregar '0' o '1' antes del punto
        }
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
}


	
	if (keyboard_check_pressed(vk_backspace)) {
         if (string_length(texto) > 0) {
            texto = string_delete(texto, string_length(texto), 1); // Elimina el último carácter
        }
    }
}

//verificamos el rango de lo ingresado del estudiante


if (string_length(texto) && !activo) {
    var _valor = real(texto);
    if (_valor >= 0.25 && _valor <= 6) {
       
    }else{
		 show_message("El rango permitido es de 0.25 a 6.");
         texto = "";
	}
}


//Metodo del checkBox
if (mouse_check_button_pressed(mb_left)) {
    // Verifica si el mouse hace clic dentro del área del campo de texto
    if ((device_mouse_x_to_gui(0) >= _x_scale+150 && device_mouse_x_to_gui(0) <= _x_scale+170) && 
        (device_mouse_y_to_gui(0) >= _y_scale-10 && device_mouse_y_to_gui(0) <= _y_scale+10)) {
       // activo_negativo = true;  // Activar el campo de texto
		
		if(activo_negativo){
			activo_negativo=false;
		}else{
			activo_negativo=true;
		}
  }
}
   
//Dibujamos una X cuando activamos el negativo
if(activo_negativo){
	ch_activado="X";
}else{
	ch_activado="";
}
  
//Retornamos el valor de texto
if(!(texto=="") && activo == false){
	retornar= true;
}