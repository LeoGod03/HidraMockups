
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
		RETURN,
		JUMP,
		SHOOT
	}
	
	#macro SIZEPREF 16
	
	global.rooms_list = []; 
	
	global.index_list = 0;

	
	global.index_column = 0;
	global.list_resources = [];
	global.action = false;
	
	global.play_mockup = false;
	
	// categoria| columna| recurso
	
	//player 0
	// enemies 1
	// decoration 2
	// animals 3
	// movement 4
	//buttons 5
	// connect 6
	
	// columna 1 de categoria 1
	global.list_resources[0][0][0] = obj_respawn_player;
	
	//columna 2 de categoria 1
	global.list_resources[0][1][0] = obj_respawn_fantasma_normal;
	global.list_resources[0][1][1] = obj_respawn_fantasma_patrulla;
	global.list_resources[0][1][2] = obj_respawn_fantasma_madre;
	global.list_resources[0][1][3] = obj_respawn_fantasma_tanque;
	global.list_resources[0][1][4] = obj_respawn_fantasmas_creator;
	

	//columna 3 de categoria 1
	global.list_resources[0][2][0] = obj_respawn_arboles;
	global.list_resources[0][2][1] = obj_respawn_roca;
	global.list_resources[0][2][2] = obj_respawn_cactus;
	global.list_resources[0][2][3] = obj_respawn_nopales;
	
	
	global.list_resources[0][3][0] = obj_respawn_conejo;
	global.list_resources[0][3][1] = obj_respawn_gato;
	global.list_resources[0][3][2] = obj_respawn_serpiente;
	
	
	//columna 4 de categoria1
	global.list_resources[0][4][0] = obj_controller_joystick;
	global.list_resources[0][4][1] = obj_controller_keyboards;
	global.list_resources[0][4][2] = obj_controller_click;
	global.list_resources[0][4][3] = obj_controller_drag;
		
	//columna 5 de categoria 1	
	global.list_resources[0][5][0] = obj_respawn_button_circle;
	global.list_resources[0][5][1] = obj_respawn_button_circle_largo;
	global.list_resources[0][5][2] = obj_respawn_button_cuadrado;
	global.list_resources[0][5][3] = obj_respawn_button_cuadrado_largo;
	
	//columna 6 de categoria 1	
	global.list_resources[0][6][0] = obj_respawn_teletransporte_puerta;
	global.list_resources[0][6][1] = obj_respawn_teletransporte_piso;
	global.list_resources[0][6][2] = obj_respawn_puerta;
		
	enum ACCESSELEMENT{
		MOVEMENT,
		DELETE,
		VISIBLE,
		PROPERTIES
	}
	
	global.objects_room = [];
	
	global.list_json = [];
	
	global.path = "";
	
	global.index_room = 0;
	
	
	
}