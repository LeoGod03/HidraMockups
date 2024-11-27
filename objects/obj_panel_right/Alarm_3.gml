/// @description 
if(!variable_instance_exists(element, "components")) exit;
var _names = struct_get_names(element.components);
show_debug_message(_names);
for(var _index = 0; _index < array_length(_names); _index ++){
	if(_names[_index] == "combobox" && !instance_exists(combobox)){
		combobox = instance_create_depth(0, 0, -1, obj_combobox_gui_elements);
		combobox.position_x = 1750;
		combobox.position_y = 400;
		
		combobox.options_list = element.components.combobox.list;
		show_debug_message(combobox.options_list); 
	}
}

if(instance_exists(combobox))
	combobox.selection_text = element.action;
			

panel_right = true;