/// @description 
if(selection_color != c_red) exit;

global.path = get_save_filename("*.hidra", "");

if(global.path == "") exit;

var _room = room_duplicate(rm_test_leo);

var _room_instance = {
	room_id: _room,
	image: noone,
	name: "Gamuckp" + string(global.index_list)
}


array_push(global.rooms_list, _room_instance);

global.index_room = 0;
room_goto(global.rooms_list[0].room_id);