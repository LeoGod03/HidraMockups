global.border = 4;
global.selection = false;
global.id_selection = noone;
global.index_column = 0;
global.objects_room = [];


if(file_exists("cap" + string(global.index_room) + ".png") && !sprite_exists(global.rooms_list[global.index_room].image))
	global.rooms_list[global.index_room].image = sprite_add("cap" + string(global.index_room) + ".png", 1, 0, 0, 0, 0);

if(array_length(global.list_json) == 0){
	var _map = ds_map_create();
	ds_map_add(_map, "Length", 0);
	global.list_json[global.index_list] = json_encode(_map);
	ds_map_destroy(_map);
	exit;
}

var _objects = string_split(global.list_json[global.index_room], "\n", true);

show_debug_message(_objects);
if(array_length(_objects) == 0) exit;

var _map_length = json_decode(_objects[0]);
var _length = _map_length[?"Lenght"];

show_debug_message(string(_length));

var _map;
var _element;
for(var _index = 0; _index < _length; _index ++){
	_map = json_decode(_objects[_index + 1]);
	show_debug_message(_map);
	_element = instance_create_depth(0, 0, -1, asset_get_index(_map[?"type"]));
	with(_element){
		x = _map[?"x"];
		y = _map[?"y"];
		image_alpha = _map[?"alpha"];
		image_angle = _map[?"rotation"];
		index_creation = _index;
	}
	ds_map_destroy(_map);
	global.objects_room[_index] = _element;
}