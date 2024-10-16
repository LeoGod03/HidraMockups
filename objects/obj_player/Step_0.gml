/// @description 
if(direction <= 90 || direction >= 270)
	image_xscale = 5;
else
	image_xscale = -5;
			
y = clamp(y,  290, obj_interfaz_controller.lenght_level_height + 145);
x = clamp(x, 190, obj_interfaz_controller.lenght_level_width - 256);

if(variable_instance_exists(id, "sprites")){
	if(direction >= 45 && direction <= 135)
		sprite_index = sprites[0];
	else if(direction > 135 && direction <= 225)
		sprite_index = sprites[1];
	else if(direction > 225 && direction <= 315)
		sprite_index = sprites[2];
	else 
		sprite_index = sprites[3];
	
	
}

if(type_movement == -1) exit;

scr_movements(type_movement);