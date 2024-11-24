/// @description 
sprites = [];

sprites[0] = spr_fantasma_tanque_right;
sprites[1] = spr_fantasma_tanque_up_right;
sprites[2] = spr_fantasma_tanque_up;
sprites[3] = spr_fantasma_tanque_up_left;
sprites[4] = spr_fantasma_tanque_left;
sprites[5] = spr_fantasma_tanque_down_left;
sprites[6] = spr_fantasma_tanque_down;
sprites[7] = spr_fantasma_tanque_down_right;

points = [];


selection = false;

edit_points = false;

index_path = false;

point_x = -1;
point_y = -1;

max_points = 2;

index_creation = array_length(global.objects_room);

array_push(global.objects_room, id);