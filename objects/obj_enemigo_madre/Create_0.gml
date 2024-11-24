/// @description 

// aquí estarán sus hijos
child = []

child_max = 4;

sprites[0] = spr_fantasma_madre_right;
sprites[1] = spr_fantasma_madre_up_right;
sprites[2] = spr_fantasma_madre_up;
sprites[3] = spr_fantasma_madre_up_left;
sprites[4] = spr_fantasma_madre_left;
sprites[5] = spr_fantasma_madre_down_left;
sprites[6] = spr_fantasma_madre_down;
sprites[7] = spr_fantasma_madre_down_right;

directions = [0, 45, 90, 135, 180, 225, 270, 315];
points_childs = [];
change_direction = false; // bandera para el cambio de direccion
distance_to_movement = 0;

point_x = -1;
point_y = -1;

index_creation = array_length(global.objects_room);

array_push(global.objects_room, id);