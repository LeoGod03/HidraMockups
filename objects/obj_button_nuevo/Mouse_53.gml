/// @description 
if(selection_color != c_red) exit;

var _room = room_duplicate(rm_test_leo);

var _room_instance = {
	room_id: _room,
	image: noone
}

array_push(global.rooms_list, _room_instance);

room_goto(global.rooms_list[0].room_id);