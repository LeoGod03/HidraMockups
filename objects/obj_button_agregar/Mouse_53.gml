/// @description 
if(selection_color != c_red) exit;


if(sprite_exists(global.rooms_list[global.index_list].image))
	sprite_delete(global.rooms_list[global.index_list].image);
	
screen_save_part("cap" + string(global.index_list) + ".png", 0, 0, 1920, 1080);
var _sprite = sprite_add("cap" + string(global.index_list) + ".png", 0, 0, 0, 0, 0);
global.rooms_list[global.index_list].image = _sprite;

var _room = room_duplicate(rm_test_leo);

var _room_instance = {
	room_id: _room,
	image: noone
}

array_push(global.rooms_list, _room_instance);
global.index_list ++;

room_goto(global.rooms_list[global.index_list].room_id);