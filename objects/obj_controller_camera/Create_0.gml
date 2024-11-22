/// @description 
//posicion de la camara
camera_x = noone; 
camera_y = noone; 
//posicion previa de la camara
x_previus = -1; 
y_previus = -1;

mouse_position_x = noone; 
mouse_position_y = noone;

// zoom

width_camera = camera_get_view_width(view_camera[0]);
height_camera = camera_get_view_height(view_camera[0]);

zoom_change_width = width_camera * 0.1;
zoom_change_height = height_camera * 0.1;

max_width_camera = obj_interfaz_controller.lenght_level_width * 0.95;
max_height_camera = obj_interfaz_controller.lenght_level_height * 0.95;

//camera_set_view_size(view_camera[0], width_camera, height_camera);
zoom_view = false;


