/// @description 
//draw_text(960, 400, string(camera_x) + "/" + string(camera_y));
if(!zoom_view) exit;

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_alpha(0.5);
draw_set_color(c_white);
draw_rectangle(900, 500, 1020, 580, 0);
draw_set_color(c_black);
draw_text(960, 540,"%" + string(width_camera / max_width_camera * 100));
draw_set_alpha(1);