global.border = 4;
global.selection = false;
global.id_selection = noone;
global.index_column = 0;
global.objects_room = [];



if(file_exists("cap" + string(global.index_room) + ".png") && !sprite_exists(global.rooms_list[global.index_room].image))
	global.rooms_list[global.index_room].image = sprite_add("cap" + string(global.index_room) + ".png", 1, 0, 0, 0, 0);

if(global.play_mockup){
	instance_destroy(obj_respawn_resource);
	instance_destroy(obj_combobox_gui_categories);
	instance_destroy(obj_menu_button_bar);
	instance_destroy(obj_button_agregar);
	instance_destroy(obj_combobox_gui);
	instance_destroy(obj_text_field);
	obj_panel_right.panel_right = false;	
	obj_interfaz_controller.panel_left_active = false;
	obj_interfaz_controller.panel_top_active = false;
	camera_set_view_pos(view_camera[0], 0, 0);
}

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
var _json_struct;

for(var _index = 0; _index < _length; _index ++){
	_map = json_decode(_objects[_index + 1]);
	_json_struct = json_parse(_objects[_index + 1]);
	
	show_debug_message(_map);
	_element = instance_create_depth(0, 0, -1, asset_get_index(_map[?"type"]));
	with(_element){
		sprite_index = _map[?"sprite"];
		x = _map[?"x"];
		y = _map[?"y"];
		image_alpha = _map[?"alpha"];
		image_angle = _map[?"rotation"];
		image_xscale = _map[?"scale_x"];
		image_yscale = _map[?"scale_y"];
		if(variable_instance_exists(id, "action"))
			action = _map[?"action"];
		if(variable_instance_exists(id, "type_movement"))
			type_movement = _map[?"movement"];
			
		if(variable_instance_exists(id, "points_path")){
			
			_points = _json_struct.path;
			for(var _point = 0; _point < array_length(_points); _point ++){
				var _object_point = instance_create_depth(_points[_point][0], _points[_point][1], -1, obj_punto_path);
				_object_point.enemy_father = id;
				_object_point.number = _point +1;
				_object_point.visible = false;
				array_push(points_path, _object_point);
			}
		}
			
		index_creation = _index;
	}
	ds_map_destroy(_map);
	global.objects_room[_index] = _element;
	
}