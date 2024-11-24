/// @description
enemy_create = obj_enemigo_digido;

time_respawn = 10;

child = [];

alarm[0] = game_get_speed(gamespeed_fps) * time_respawn;

index_creation = array_length(global.objects_room);

array_push(global.objects_room, id);