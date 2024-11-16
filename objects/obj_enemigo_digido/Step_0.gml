/// @description 
target = instance_nearest(x, y, obj_player);

if(instance_exists(target)){
	mp_potential_step(target.x, target.y, velocity, false);
	direction = point_direction(x ,y, target.x, target.y);
}
	
scr_change_direction_enemies();