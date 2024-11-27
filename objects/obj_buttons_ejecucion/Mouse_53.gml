/// @description 
if(global.action) exit;

switch(index_selection){
	
	case 0: 
		if(!global.play_mockup){
			global.play_mockup = true;
			if(instance_exists(obj_element_mockup))
				obj_element_mockup.alarm[11] = 1;
			instance_destroy(obj_respawn_resource);
			instance_destroy(obj_combobox_gui_categories);
			instance_destroy(obj_menu_button_bar);
			instance_destroy(obj_button_agregar);
			instance_destroy(obj_combobox_gui);
			instance_destroy(obj_text_field);
			obj_panel_right.panel_right = false;
			camera_set_view_pos(view_camera[0], 0, 0);
			global.index_column = 0;
			//instance_destroy(obj_interfaz_controller);
		}
		break;
	case 1:
		if(global.play_mockup){
			global.play_mockup = false;
			if(instance_exists(obj_element_mockup))
				obj_element_mockup.alarm[10] = 1;
			
			obj_interfaz_controller.alarm[0] = 5;
			instance_create_depth(0, 0, -1, obj_combobox_gui_categories);
			instance_create_depth(0, 0, -1, obj_button_categorie_player);
			/*
			for(var _index = 0; _index < array_length(buttons_categories); _index ++)
				instance_create_depth(0, _index, -1, buttons_categories[_index]);
				]
				*/
		}
		
		break;
		
	
}