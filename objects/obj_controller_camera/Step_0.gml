/// @description 

// posición absoluta del ratón 
mouse_position_x = device_mouse_raw_x(0); 
mouse_position_y = device_mouse_raw_y(0);
// obtenemos la coordenadas de la cámara 
camera_x = camera_get_view_x(view_camera[0]);
camera_y = camera_get_view_y(view_camera[0]);
// si presiona el ratón o dedo hace la operación 

if (mouse_check_button(mb_left)){
	// el valor por el que se multiplica (0.5) es la velocidad,puedes jugar con los valores
	camera_x += (x_previus - mouse_position_x) * 0.5;
	camera_y += (y_previus - mouse_position_y) * 0.5;
}

// actualizamos las coordenadas previas
x_previus = mouse_position_x;
y_previus = mouse_position_y;



//zoom
if(mouse_wheel_up()){
	height_camera = height_camera * 0.95;
	width_camera = width_camera * 0.95;
}

if(mouse_wheel_down()){
	height_camera = height_camera * 1.05;
	width_camera = width_camera * 1.05;
	
}
height_camera = clamp(height_camera, max_height_camera * 0.10, max_height_camera);
width_camera = clamp(width_camera, max_width_camera * 0.10, max_width_camera);

camera_set_view_size(view_camera[0], width_camera, height_camera);



// que no salga de la habitación la puta cámara xd
camera_x = clamp(camera_x,0,room_width-camera_get_view_width(view_camera[0]) - 256);
camera_y = clamp(camera_y,145,room_height-camera_get_view_height(view_camera[0]));

//le ponemos la posicion en la camara
camera_set_view_pos(view_camera[0],camera_x,camera_y);

//zoom
if(mouse_wheel_up()){
	
}