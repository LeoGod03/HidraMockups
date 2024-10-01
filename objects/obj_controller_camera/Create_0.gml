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
zoom_change = 10;
width_camera = camera_get_view_width(view_camera[0]);
height_camera = camera_get_view_height(view_camera[0]);

max_width_camera = width_camera;
max_height_camera = height_camera;

zoom_view = false;
