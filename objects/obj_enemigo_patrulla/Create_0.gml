/// @description 
sprites = [];

sprites[0] = spr_fantasma_patrulla_right;
sprites[1] = spr_fantasma_patrulla_up_right;
sprites[2] = spr_fantasma_patrulla_up;
sprites[3] = spr_fantasma_patrulla_up_left;
sprites[4] = spr_fantasma_patrulla_left;
sprites[5] = spr_fantasma_patrulla_down_left;
sprites[6] = spr_fantasma_patrulla_down;
sprites[7] = spr_fantasma_patrulla_down_right;

points_path = [];

point_x = -1;
point_y = -1;

selection = false;

edit_points = false;

index_path = 0;

touch_point = false;

index_creation = array_length(global.objects_room);

array_push(global.objects_room, id);