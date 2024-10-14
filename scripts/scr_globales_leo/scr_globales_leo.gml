
function scr_globales_leo(){
	
	enum MOVEMENTYPE{
		JOYSTICK,
		PAD,
		POINTCLICK,
		DRAGMOUSE
	}
	
	global.index_column = 0;
	global.list_resources = [];
	
	// categoria| columna| recurso
	
	// columna 1 de todas las categorias
	global.list_resources[0][0][0] = obj_respawn_player;
	global.list_resources[0][0][1] = obj_respawn_arquero;

	global.list_resources[1][0][0] = obj_respawn_caballero;
	global.list_resources[1][0][1] = obj_respawn_mago;
	
	global.list_resources[2][0][0] = obj_respawn_sacerdote;
	global.list_resources[2][0][1] = obj_respawn_arquero;
	
	global.list_resources[3][0][0] = obj_respawn_sacerdote;
	
	//columna 2 de todas las categorias
	global.list_resources[0][1][0] = obj_respawn_elfo;
	global.list_resources[0][1][1] = obj_respawn_sacerdote;

	global.list_resources[1][1][0] = obj_respawn_player;
	global.list_resources[1][1][1] = obj_respawn_mago;
	
	global.list_resources[2][1][0] = obj_respawn_caballero;
	global.list_resources[2][1][1] = obj_respawn_arquero;
	
	global.list_resources[3][1][0] = obj_respawn_elfo;
	
	//columna 3 de todas las categorias
	global.list_resources[0][2][0] = obj_respawn_player;

	global.list_resources[1][2][0] = obj_respawn_elfo;
	global.list_resources[1][2][1] = obj_respawn_mago;
	
	global.list_resources[2][2][0] = obj_respawn_arquero;
	
	global.list_resources[3][2][0] = obj_respawn_mago;
	
	//columna 4 de todas las categorias
	global.list_resources[0][3][0] = obj_respawn_elfo;

	global.list_resources[1][3][0] = obj_respawn_caballero;
	global.list_resources[1][3][1] = obj_respawn_player;
	
	global.list_resources[2][3][0] = obj_respawn_mago;
	
	global.list_resources[3][3][0] = obj_respawn_caballero;
	
	
	
	
}