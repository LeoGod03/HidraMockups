/// @description 
if(selection_color != c_red) exit;

instance_destroy(obj_combobox_gui);
instance_destroy(obj_menu_button_bar);
instance_destroy(obj_respawn_resource);

obj_interfaz_controller.panel_left_active = false;
obj_interfaz_controller.panel_top_active = false;

alarm[0] = 10;