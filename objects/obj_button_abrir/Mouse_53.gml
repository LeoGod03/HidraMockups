/// @description 

//room_instance_clear()

if(selection_color != c_red) exit;

global.path = get_open_filename("*hidra", "");

show_debug_message("hola");


if(string_length(global.path) == 0) exit;

var _split_name = string_split(filename_name(global.path), ".", true);
global.file_name = _split_name[0];

var _rooms = scr_read_file();
var _room_instance;
var _size = array_length(global.rooms_list);
if(_rooms >= _size)
	_rooms -= _size;

for(var _index = 0; _index < _rooms; _index ++){
	
	var _sprite = noone;
	if(file_exists(global.file_name + "G" + string(_index) + ".png"))
		_sprite = sprite_add(global.file_name + "G" + string(_index) + ".png", 1, 0, 0, 0, 0);
	
	_room_instance = {
		room_id: room_duplicate(rm_test_leo),
		image: _sprite,
		name: "Gamuckp" + string(_size +_index)
	}
	
	array_push(global.rooms_list, _room_instance);
}
global.index_list = array_length(global.rooms_list) - 1;

global.index_room = 0;
global.rooms_list[0].room_id = room_duplicate(rm_test_leo);

room_goto(global.rooms_list[0].room_id);

