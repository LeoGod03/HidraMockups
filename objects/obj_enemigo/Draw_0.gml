/// @description dibujar vida y demas

draw_self();
draw_set_color(c_white);

draw_set_color(c_red);
draw_rectangle(x - life / 2 / life_divisor,
			   y - sprite_height * 0.65,
			   x + life / 2 / life_divisor,
			   y - sprite_height * 0.80,0);
			   
			   
draw_set_color(c_red);

if(collision_points[0] != 0)
	draw_line_width(x, y, collision_points[0], collision_points[1], 2);

if(!variable_instance_exists(id, "points_path")) exit;
if(!variable_instance_exists(id, "edit_points")) exit;

if(!edit_points) exit;

for(var _index = 0; _index < array_size; _index ++){
	if(_index > 0){
		
		
		draw_line(points_path[_index].x, points_path[_index].y,
			      points_path[_index - 1].x,
		          points_path[_index - 1].y);
	}
			  
	//draw_circle(points_path[_index][0], points_path[_index][1], 1, 0);
}
if(array_size > 1)
	draw_line(points_path[0].x, points_path[0].y,points_path[array_size - 1].x, points_path[array_size - 1].y);
	

