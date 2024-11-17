
function scr_globales_leo(){
	
	enum MOVEMENTYPE{
		JOYSTICK,
		PAD,
		POINTCLICK,
		DRAGMOUSE
	}
	
	enum STATE{
		IDLE,
		RUN,
		ATTACK,
		DEAD,
		PATROL,
		CREATION,
		FLY,
		RETURN
	}
	
	#macro SIZEPREF 16
	
	global.index_column = 0;
	global.list_resources = [];
	global.action = false;
	
	// categoria| columna| recurso
	
	// columna 1 de todas las categorias
	global.list_resources[0][0][0] = obj_respawn_player;
	global.list_resources[0][0][1] = obj_respawn_fantasmas_creator;

	global.list_resources[1][0][0] = obj_respawn_fantasma_madre;
	global.list_resources[1][0][1] = obj_respawn_fantasma_tanque;
	
	global.list_resources[2][0][0] = obj_respawn_fantasma_patrulla;
	global.list_resources[2][0][1] = obj_respawn_fantasmas_creator;
	
	global.list_resources[3][0][0] = obj_respawn_fantasma_patrulla;
	
	//columna 2 de todas las categorias
	global.list_resources[0][1][0] = obj_respawn_fantasma_normal;
	global.list_resources[0][1][1] = obj_respawn_fantasma_patrulla;

	global.list_resources[1][1][0] = obj_respawn_player;
	global.list_resources[1][1][1] = obj_respawn_fantasma_tanque;
	
	global.list_resources[2][1][0] = obj_respawn_fantasma_madre;
	global.list_resources[2][1][1] = obj_respawn_fantasmas_creator;
	
	global.list_resources[3][1][0] = obj_respawn_fantasma_normal;
	
	//columna 3 de todas las categorias
	global.list_resources[0][2][0] = obj_respawn_player;

	global.list_resources[1][2][0] = obj_respawn_fantasma_normal;
	global.list_resources[1][2][1] = obj_respawn_fantasma_tanque;
	
	global.list_resources[2][2][0] = obj_respawn_fantasmas_creator;
	
	global.list_resources[3][2][0] = obj_respawn_fantasma_tanque;
	
	//columna 4 de todas las categorias
	for(var _index = 0; _index < 4; _index ++){
		global.list_resources[_index][3][0] = obj_control_joystick;
		global.list_resources[_index][3][1] = obj_control_keyboards;
		global.list_resources[_index][3][2] = obj_control_click;
		global.list_resources[_index][3][3] = obj_control_drag;
	}
	
	enum ACCESSELEMENT{
		MOVEMENT,
		DELETE,
		VISIBLE,
		PROPERTIES
	}
	
	
	
	
	
}