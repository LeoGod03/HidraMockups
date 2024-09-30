/// @description 
if(!instance_exists(neighbor_instance)) exit;
with(neighbor_instance){
	position_x = other.position_x + other.length_width / 2 + length_width / 2 + 20;	
}