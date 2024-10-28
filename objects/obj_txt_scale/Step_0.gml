if (mouse_check_button_pressed(mb_left)) {
    // Verifica si el mouse hace clic dentro del área del campo de texto
    if ((device_mouse_x_to_gui(0) >= _x_alpha-45 && device_mouse_x_to_gui(0) <= _x_alpha+45) && 
        (device_mouse_y_to_gui(0) >= _y_alpha-25 && device_mouse_y_to_gui(0) <= _y_alpha+25)) {
        activo_rectangulo_x  = true;  // Activar el campo de texto
		
  } else {
        activo_rectangulo_x  = false;  // Desactivar el campo si se hace clic fuera
    }
}

// Actualiza el texto cuando el campo de texto está activo
if (activo_rectangulo_x) {
    // Asigna el texto ingresado por el usuario
    texto = keyboard_string;
}else{
	keyboard_string="";
}

// Comprueba si el campo de texto no está activo
if (!activo_rectangulo_x) {
    // Eliminar espacios en blanco y reemplazar comas por puntos
    texto = string_replace_all(texto, " ", "");
    texto = string_replace_all(texto, ",", ".");
	//texto = string_digits(texto);
    // Verifica que el texto no esté vacío y sea un número real
    if (string_length(texto) > 0) {
        show_message("Contenido de texto: " + texto); // Para depuración

        if (is_real(texto)) {
            // Muestra un mensaje si el texto es un número real
            show_message("El número ingresado es real: " + texto);
        } else {
            // Mensaje de error si el texto no es un número real
            show_message("Error: El texto ingresado no es un número real.");
            texto = "";
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
   
}

