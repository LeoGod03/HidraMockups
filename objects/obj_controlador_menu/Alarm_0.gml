/// @description 

for(var _index = 0; _index < array_length(colors); _index ++)
	colors[_index] = make_color_rgb(irandom(255), irandom(255), irandom(255));

alarm[0] = game_get_speed(gamespeed_fps);