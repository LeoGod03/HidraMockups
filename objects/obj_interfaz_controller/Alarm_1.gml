/// @description
instance_create_depth(0, 0, -1, obj_buttons_ejecucion);
if(global.play_mockup) exit;
if(!sprite_exists(global.rooms_list[global.index_list].image)){
	
	var _sprite = noone;
	screen_save_part(global.file_name + "G" + string(global.index_list) + ".png", 0, 0, 1920, 1080);
	_sprite = sprite_add(global.file_name + "G" + string(global.index_list) + ".png", 0, 0, 0, 0, 0);
	global.rooms_list[global.index_list].image = _sprite;
}

panel_left_active = true;
panel_top_active = true;

instance_create_depth(0, 0, -1, obj_button_categorie_player);
instance_create_depth(0, 0, -1, obj_combobox_gui_categories);