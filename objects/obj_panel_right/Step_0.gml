/// @description 
if(!instance_exists(element)) exit;

if(element.movement_pointer){
	position_x.text = string(element.x);
	position_y.text = string(element.y);
}