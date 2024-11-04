/// @description 
target = instance_nearest(x, y, obj_player);

if(instance_exists(target))
	mp_potential_step(target.x, target.y, velocity, false);