/// @description 

x = x_position_prev;
y = y_position_prev;

speed = 0;

direction = 0;

array_foreach(child, function(_element) {instance_destroy(_element)});