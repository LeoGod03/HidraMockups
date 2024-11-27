/// @description 

// selección del controlador de archivos

if(index_file_control_selection != -1){
	
	switch(index_file_control_selection){
		case 0:
			global.list_json[global.index_room] = scr_generate_json();
			scr_file_write();
			break;
		case 1:
			show_message("En desarrollo papi");
			break;
		case 2:
			game_restart();
			break;
	}
}


// cambio de frame
if(index_mockup_selection != -1){

	instance_destroy(obj_combobox_gui);
	instance_destroy(obj_menu_button_bar);
	instance_destroy(obj_respawn_resource);

	obj_interfaz_controller.panel_left_active = false;
	obj_interfaz_controller.panel_top_active = false;


	alarm[2] = 10;
}

