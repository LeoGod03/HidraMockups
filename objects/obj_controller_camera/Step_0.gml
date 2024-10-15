/// @description 

// posición absoluta del ratón 
mouse_position_x = device_mouse_raw_x(0); 
mouse_position_y = device_mouse_raw_y(0);
// obtenemos la coordenadas de la cámara 
camera_x = camera_get_view_x(view_camera[0]);
camera_y = camera_get_view_y(view_camera[0]);
// si presiona el ratón o dedo hace la operación 

if (mouse_check_button(mb_left) && height_camera < obj_interfaz_controller.lenght_level_height){
	// el valor por el que se multiplica (0.5) es la velocidad,puedes jugar con los valores
	camera_x += (x_previus - mouse_position_x) * 0.5;
	camera_y += (y_previus - mouse_position_y) * 0.5;
}


// actualizamos las coordenadas previas
x_previus = mouse_position_x;
y_previus = mouse_position_y;



//zoom
if(!global.selection){
	if(mouse_wheel_up()){
		height_camera = height_camera * 0.90;
		width_camera = width_camera * 0.90;
		if(!zoom_view){
			zoom_view = true;
			alarm[0] = game_get_speed(gamespeed_fps) * 0.5;
		}
	}

	if(mouse_wheel_down()){
		height_camera = height_camera * 1.1;
		width_camera = width_camera * 1.1;
		if(!zoom_view){
			zoom_view = true;
			alarm[0] = game_get_speed(gamespeed_fps) * 0.5;
		}
	
	}
}
height_camera = clamp(height_camera, max_height_camera * 0.01, max_height_camera);
width_camera = clamp(width_camera, max_width_camera *0.01, max_width_camera);

camera_set_view_size(view_camera[0], width_camera, height_camera);

// que no salga de la habitación la cámara xd

camera_x = clamp(camera_x, 0, obj_interfaz_controller.lenght_level_width - camera_get_view_width(view_camera[0]));
camera_y = clamp(camera_y, 145,obj_interfaz_controller.lenght_level_height - camera_get_view_height(view_camera[0]) + 145); // el error esta aqui 

//le ponemos la posicion en la camara
camera_set_view_pos(view_camera[0],camera_x,camera_y);