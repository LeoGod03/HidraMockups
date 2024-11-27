/// @description 
if(selection_color != c_red) exit;

global.path = get_save_filename("*.hidra", "");

show_debug_message(global.path);

if(string_length(global.path) == 0) exit;

if (array_length(string_split(global.path, ".")) == 1)
		global.path += ".hidra"
else{
	show_message("Error en la ruta del archivo");
	exit;
}

var _split_name = string_split(filename_name(global.path), ".", true);
global.file_name = _split_name[0];
var _room = room_duplicate(rm_test_leo);

var _room_instance = {
	room_id: _room,
	image: noone,
	name: "Gamuckp" + string(global.index_list)
}


array_push(global.rooms_list, _room_instance);

global.index_room = 0;
room_goto(global.rooms_list[0].room_id);