/// @description
enemy_create = obj_enemigo_digido;

action = 1;

child = [];

alarm[0] = game_get_speed(gamespeed_fps) * action;

index_creation = array_length(global.objects_room);

array_push(global.objects_room, id);


components = {
	
	"textfield":{
		min: 0.25,
		max: 120,
		text_info: "Retardo:"
	}
}