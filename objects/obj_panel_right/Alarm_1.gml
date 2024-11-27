/// @description 
if(!instance_exists(element)) exit;


if(!element.movement_pointer){
	element.x = position_x.value;
	element.y = position_y.value;
}
element.image_alpha = alpha.value;
element.image_angle = rotation.value;
element.image_xscale = scale_x.value;
element.image_yscale = scale_y.value;

if(instance_exists(frame))
	element.action = frame.value;

