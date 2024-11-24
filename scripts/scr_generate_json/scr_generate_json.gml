
function scr_generate_json(){
	var _index;
		
	var _list_objects_room; 
	
	_list_objects_room = ds_list_create(); 

	
	var _element = []; // un arreglo de mapas para que cada objeto ocupe un mapa
	var _size_list = array_length(global.objects_room);
	
	show_debug_message(global.objects_room);
	var _map_for_size = ds_map_create();
	ds_map_add(_map_for_size, "Lenght", _size_list);
	ds_list_add(_list_objects_room, _map_for_size);
	for (_index = 0; _index < _size_list; _index++) {
	    
		_element[_index] = ds_map_create();
				
		var _instance = global.objects_room[_index];
		show_debug_message(_instance);
        
		ds_map_add(_element[_index], "type", object_get_name(_instance.object_index)); // Convertir índice a nombre
	    ds_map_add(_element[_index], "x", _instance.x);
	    ds_map_add(_element[_index], "y", _instance.y);
	    ds_map_add(_element[_index], "rotation", _instance.image_angle);
	    ds_map_add(_element[_index], "alpha", _instance.image_alpha);

	    ds_list_add(_list_objects_room, _element[_index]);
	}
	
	
	var _json_string = ""
	// vamos codificando mapa por mapa
	for(_index = 0; _index <= _size_list; _index ++)
		_json_string += json_encode(ds_list_find_value(_list_objects_room, _index)) +"\n";
	
	show_debug_message(_json_string); 
	
	// Limpiar estructuras después de usarlas
	for (_index = 0; _index <= _size_list; _index++) {
	    var _map = ds_list_find_value(_list_objects_room, _index);
	    ds_map_destroy(_map); 
	}
	ds_list_destroy(_list_objects_room); 
	
	return _json_string;

}