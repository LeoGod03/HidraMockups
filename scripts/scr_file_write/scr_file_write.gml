
function scr_file_write(){

	if (array_length(string_split(global.path, ".")) == 1)
		global.path += ".hidra"
	
	if(file_exists(global.path))
		file_delete(global.path);
		
	var _file = file_text_open_write(global.path);

	for(var _index = 0; _index < array_length(global.list_json); _index ++){
		file_text_write_string(_file, "Room:" + string(_index) +"\n");
		file_text_write_string(_file, global.list_json[_index]);
	}

	file_text_close(_file);
}