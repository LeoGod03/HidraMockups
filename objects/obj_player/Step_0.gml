/// @description 
if(direction <= 90 || direction >= 270)
	image_xscale = 5;
else
	image_xscale = -5;
			
y = clamp(y,  290, obj_interfaz_controller.lenght_level_height);
x = clamp(x, 190, obj_interfaz_controller.lenght_level_width - 256);


if(type_movement == -1) exit;

scr_movements(type_movement);