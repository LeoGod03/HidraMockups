/// @description
array_foreach(points_path, function(_element, _index){instance_destroy(_element)});

array_delete(global.objects_room, index_creation, 1);