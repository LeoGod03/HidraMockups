if (mouse_check_button_pressed(mb_left)) {
	
    if (device_mouse_x_to_gui(0) >= position_x + string_width(text_info)  && device_mouse_x_to_gui(0) <= position_x + string_width(text_info) + 100 && 
        device_mouse_y_to_gui(0) >= position_y && device_mouse_y_to_gui(0) <= position_y + 35) {
        activate = true;  
		
	  }else if (activate){
	        activate = false; 
			obj_panel_right.alarm[1] = 5;
	  }
		
}

//Dibujamos dentro del txt

if (activate) {
	
	if (keyboard_lastchar != "" && string_length(text) < lenght_text_max) {
	  
		//numero_ingresado = keyboard_lastchar
		if(keyboard_lastchar == "-" && string_length(text) == 0)
			text += keyboard_lastchar;
			
		else if (keyboard_lastchar >= character_min && keyboard_lastchar <= character_max)
			text += keyboard_lastchar;
			
		else if (keyboard_lastchar == "." && string_count(".", text) == 0 ) 
			text += keyboard_lastchar; // Agregar el punto decimal
    
		else if (keyboard_lastchar >= character_min && keyboard_lastchar <= character_max && string_count(".", text) == 1) {
			 var _point_position = string_pos(".", text);
		     var _length_decimal = string_length(text) - _point_position;
        
		        // Permitir hasta tres dígitos después del punto
		     if (_length_decimal < 3) 
				text += keyboard_lastchar;
		}
    
	    keyboard_lastchar = "";
	}

	if (keyboard_check_pressed(vk_backspace)) {
		
		if (string_length(text) > 0) 
			text = string_delete(text, string_length(text), 1);
	}
	if(keyboard_check_pressed(vk_enter)){
		activate = false;
		obj_panel_right.alarm[1] = 5;
	}
}

//verificamos el rango de lo ingresado

if (string_length(text) && !activate) {
	
    value = real(text);
	
    if (value < value_min || value > value_max) {
		show_message("El rango permitido es de " + string(value_min) + " a " + string(value_max));
        text = "";
	} 
	
}

/*
//Retornamos el valor de texto
if(texto != "" && !activate){
	retornar= true;
}
*7










