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
    

    // Verificar si el carácter es '0' o '1' y no se ha agregado un punto aún
    if (keyboard_lastchar >= "0" && keyboard_lastchar <="9") {
       // if (string_length(texto) < num_ingresado_permitidos) {
            texto += keyboard_lastchar; // Agregar '0' o '1' antes del punto
        //}
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

//verificamos el rango de lo ingresado
if (string_length(texto) && !activo) {
    var _valor = real(texto);
    if (_valor >= 0 && _valor <= obj_interfaz_controller.lenght_level_width) {
       
    }else{
		show_message("El rango permitido es de 0 a " + string(obj_interfaz_controller.lenght_level_width));

         texto = "";
	}
}

//Retornamos el valor de texto
if(!(texto=="") && activo == false){
	retornar= true;
}










