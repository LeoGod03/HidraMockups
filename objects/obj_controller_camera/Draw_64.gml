/// @description 
//draw_text(960, 400, string(width_camera) + "/" + string(height_camera));
if(!zoom_view) exit;

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_alpha(0.5);
draw_set_color(c_white);
draw_rectangle(900, 500, 1020, 580, 0);
draw_set_color(c_black);
draw_text(960, 540,"%" + string(max_width_camera / width_camera ));
draw_set_alpha(1);