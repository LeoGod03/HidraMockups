/// @description crear nuevo frame


if(sprite_exists(global.rooms_list[global.index_list].image))
	sprite_delete(global.rooms_list[global.index_list].image);
	
screen_save_part("cap" + string(global.index_list) + ".png", 0, 0, 1920, 1080);
var _sprite = sprite_add("cap" + string(global.index_list) + ".png", 0, 0, 0, 0, 0);
global.rooms_list[global.index_list].image = _sprite;

var _room = room_duplicate(rm_test_leo);

var _room_instance = {
	room_id: _room,
	image: noone,
	name: ""
}

global.list_json[global.index_list] = scr_generate_json();

array_push(global.rooms_list, _room_instance);
global.index_list ++;
global.index_room = global.index_list;
_room_instance.name = "Gamuckp" + string(global.index_list);

global.list_json[global.index_list] = "";

room_goto(global.rooms_list[global.index_list].room_id);