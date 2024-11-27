/// @description 
panel_right = true;
if(!instance_exists(element)) exit;

if(instance_exists(position_x)) {
	position_x.text = string(element.x);
	position_y.text = string(element.y);
	rotation.text = string(element.image_angle);
	alpha.text = string(element.image_alpha);
	scale_x.text = string(element.image_xscale);
	scale_y.text = string(element.image_yscale);
	if(instance_exists(combobox))
		combobox.selection_text = element.action;
	if(instance_exists(frame))
		frame.text = string(element.action);
	exit;
}


position_x = instance_create_depth(0, 0, -1 ,obj_text_field);

with(position_x){
	position_x = 1550;
	position_y = 300;
	text_info = "Pos_x:"
	value_min = 0;
	value_max = obj_interfaz_controller.lenght_level_width;
}

position_y = instance_create_depth(0, 0, -1 ,obj_text_field);

with(position_y){
	position_x = 1725;
	position_y = 300;
	text_info = "Pos_y:"
	value_min = 0;
	value_max = obj_interfaz_controller.lenght_level_height;
}

alpha = instance_create_depth(0, 0, -1, obj_text_field);


with(alpha){
	position_x = 1550;
	position_y = 400;
	text_info = "Alpha:"
	value_min = 0;
	value_max = 1;
}

rotation = instance_create_depth(0, 0, -1, obj_text_field);


with(rotation){
	position_x = 1725;
	position_y = 400;
	text_info = "Rotación:"
	value_min = 0;
	value_max = 359;
}

scale_x = instance_create_depth(0, 0, -1, obj_text_field);


with(scale_x){
	position_x = 1550;
	position_y = 500;
	text_info = "Escala_x:"
	value_min = -5;
	value_max = 5;
}

scale_y = instance_create_depth(0, 0, -1, obj_text_field);


with(scale_y){
	position_x = 1550;
	position_y = 600;
	text_info = "Escala_y:"
	value_min = -5;
	value_max = 5;
}

// ponemos los valores sin el set y el get xD

position_x.text = string(element.x);
position_y.text = string(element.y);
rotation.text = string(element.image_angle);
alpha.text = string(element.image_alpha);
scale_x.text = string(element.image_xscale);
scale_y.text = string(element.image_yscale)

if(!variable_instance_exists(element, "components")) {
	instance_destroy(frame);
	instance_destroy(combobox);
	exit;
}
var _names = struct_get_names(element.components);
show_debug_message(_names);
for(var _index = 0; _index < array_length(_names); _index ++){
	if(_names[_index] == "combobox" && !instance_exists(combobox)){
		combobox = instance_create_depth(0, 0, -1, obj_combobox_gui_elements);
		combobox.position_x = 1750;
		combobox.position_y = 700 + 100 * _index;
		
		combobox.options_list = element.components.combobox.list;
		show_debug_message(combobox.options_list); 
	}else if(_names[_index] == "textfield" && !instance_exists(frame)){
		frame = instance_create_depth(0, 0, -1, obj_text_field);
		frame.position_x = 1550;
		frame.position_y = 700 + 100 * _index;
		
		frame.value_max = element.components.textfield.max;
		frame.value_min = element.components.textfield.min;
		frame.text_info = element.components.textfield.text_info;
		frame.text = string(element.action);
	}
}

if(instance_exists(combobox))
	combobox.selection_text = element.action;
			