/// @description
screen_save_part("cap" + string(global.index_list) + ".png", 0, 0, 1920, 1080);
var _sprite = sprite_add("cap" + string(global.index_list) + ".png", 0, 0, 0, 0, 0);
global.rooms_list[global.index_list].image = _sprite;

panel_left_active = true;
panel_top_active = true;

instance_create_depth(0, 0, -1, obj_button_categorie_player);
instance_create_depth(0, 0, -1, obj_buttons_ejecucion);
instance_create_depth(0, 0, -1, obj_combobox_gui);