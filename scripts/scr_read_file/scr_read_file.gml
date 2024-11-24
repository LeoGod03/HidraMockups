function scr_read_file(){
	// Nombre del archivo
	var _file = file_text_open_read(global.path); // Abrir archivo en modo lectura
	var _num_rooms = 0;

	while (!file_text_eof(_file)) {
	    // Leer habitación
	    var _room_line = file_text_read_string(_file);
		show_debug_message(_room_line);
	    // Leer longitud


	    file_text_readln(_file);
		var _length_json = file_text_read_string(_file);
		show_debug_message(_length_json);
	    var _length_map = json_decode(_length_json); // Decodificar el JSON
	    var _length = _length_map[?"Lenght"];
		
		ds_map_destroy(_length_map);
		show_debug_message(_length);
		file_text_readln(_file);
	    // Leer los objetos
		global.list_json[_num_rooms] = _length_json + "\n";
	    for (var _index = 0; _index < _length; _index++) {
	        global.list_json[_num_rooms] += file_text_read_string(_file) + "\n";
	        file_text_readln(_file);
	    }
		_num_rooms ++;
		
		//file_text_readln(_file);
	}

	// Cerrar archivo
	file_text_close(_file);

	// Depuración: Mostrar datos
	show_debug_message("Datos cargados:");
	show_debug_message(global.list_json);
	
	return _num_rooms;
}