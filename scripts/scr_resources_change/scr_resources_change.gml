function scr_resources_change(_index_combobox){
	// se va a cambiar xd
	instance_destroy(obj_respawn_resource);
	var _list = global.list_resources[_index_combobox];
	var _resource;
	for(var _index = 0; _index < array_length(_list[global.index_column]); _index ++){
		_resource = instance_create_depth(0, 0, -1, _list[global.index_column][_index]);
		_resource.position = _index;
	}

}