/// @description 

if(!edit_points) exit;

draw_set_color(c_white);
draw_roundrect((1920 / 2 - 300) - 350,  225, (1920 / 2 - 300) + 350, 275, 0);

if(array_size > 0){
	draw_set_font(fnt_text_resources);
	draw_set_halign(fa_center);
	draw_set_color(c_black);
	draw_text(1920 / 2 - 300 , 250, "Primer punto: " + "{" + string(points_path[0].x) + "," + string(points_path[0].y) + "}"
									 +" Último punto:" + "{" + string(points_path[array_size - 1].x) + "," + string(points_path[array_size - 1].y) + "}"
									 +" Tamaño de la ruta: " + string(array_size));
	
}
