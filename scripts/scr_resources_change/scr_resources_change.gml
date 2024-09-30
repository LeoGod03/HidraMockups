function scr_resources_change(_index_combobox){
	// se va a cambiar xd
	instance_destroy(obj_respawn_resource);
	var _respawn;
	switch(_index_combobox){
		case 0:
			global.list_resources[0] = instance_create_depth(0, 0, -1, obj_respawn_player);
			global.list_resources[1] = instance_create_depth(0, 0, -1, obj_respawn_arquero);
			break;
		case 1:
			_respawn = instance_create_depth(0, 0, -1, obj_respawn_caballero);
			_respawn.position = 0;
			global.list_resources[0] = _respawn;
			break;
		case 2:
			_respawn = instance_create_depth(0, 0, -1, obj_respawn_sacerdote);
			_respawn.position = 0;
			global.list_resources[0] = _respawn;
			break;
		case 3:
			_respawn = instance_create_depth(0, 0, -1, obj_respawn_mago);
			_respawn.position = 0;
			global.list_resources[0] = _respawn;
			break;
		default:
			show_debug_message("No hay para ese crack");
			break;
		
	}

}