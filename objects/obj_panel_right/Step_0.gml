/// @description 
if(!instance_exists(element)) exit;
if(!instance_exists(position_x)) exit;

if(element.movement_pointer){
	position_x.text = string(element.x);
	position_y.text = string(element.y);
}

/*
if(element.visible_element) exit;

alpha.text = string(element.image_alpha);
*/