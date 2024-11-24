/// @description 

//room_instance_clear()

if(selection_color != c_red) exit;

global.path = get_open_filename("*hidra", "");

if(global.path == "") exit;

var _rooms = scr_read_file();
var _room_instance;
var _size = array_length(global.rooms_list);
if(_rooms >= _size)
	_rooms -= _size;

for(var _index = 0; _index < _rooms; _index ++){
	
	_room_instance = {
		room_id: room_duplicate(rm_test_leo),
		image: noone,
		name: "Gamuckp" + string(_size +_index)
	}
	
	array_push(global.rooms_list, _room_instance);
}
global.index_list = array_length(global.rooms_list) - 1;

global.index_room = 0;
global.rooms_list[0].room_id = room_duplicate(rm_test_leo);
room_goto(global.rooms_list[0].room_id);

