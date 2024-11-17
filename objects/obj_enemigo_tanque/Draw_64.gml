/// @description 

if(!edit_points) exit;

draw_set_color(c_white);
draw_roundrect(1920 / 2 - 300,  225, 1920 / 2 + 300, 275, 0);

if(array_size > 0){
	var _text = "Punto A: " + "{" + string(points[0].x) + "," + string(points[0].y) + "}";
	if(array_size > 1)
	 _text += " <--> Punto B" + "{" + string(points[1].x) + "," + string(points[1].y) + "}";
	draw_set_font(fnt_text_resources);
	draw_set_halign(fa_center);
	draw_set_color(c_black);
	draw_text(1920 / 2 , 250, _text);
	
}
