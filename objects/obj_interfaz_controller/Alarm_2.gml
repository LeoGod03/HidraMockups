/// @description crear nuevo frame


if(sprite_exists(global.rooms_list[global.index_room].image))
	sprite_delete(global.rooms_list[global.index_room].image);
	
screen_save_part("cap" + string(global.index_room) + ".png", 0, 0, 1920, 1080);
var _sprite = sprite_add("cap" + string(global.index_room) + ".png", 0, 0, 0, 0, 0);
global.rooms_list[global.index_room].image = _sprite;


global.list_json[global.index_room] = scr_generate_json();

global.index_room = index_mockup_selection;

room_goto(global.rooms_list[global.index_room].room_id);

