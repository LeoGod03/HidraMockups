/// @description 
if(!instance_exists(element)) exit;
if(!instance_exists(position_x)) exit;

if(element.movement_pointer){
	position_x.text = string(element.x);
	position_y.text = string(element.y);
}

if(element.element_gui){
	position_x.value_max = 1920;
	position_y.value_max = 1080;
}else{
	position_x.value_max = obj_interfaz_controller.lenght_level_width;
	position_y.value_max = obj_interfaz_controller.lenght_level_height;
}


/*
if(element.visible_element) exit;

alpha.text = string(element.image_alpha);
*/