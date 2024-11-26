/// @description variables
selection_text = options_list[0];
selection_index = 0;
selection_index_prev = 0;
grid_selection_y = 0;

width = 0;
list_heigth = 30 * array_length(options_list);
// encontrar el texto mas largo para definir el ancho de la caja :) 
for(var _index = 1; _index < array_length(options_list); _index ++){
	if(string_length(options_list[_index]) > width)
		width = string_length(options_list[_index]) + string(_index + 1);
}

factor_font = font_get_size(fnt_text_resources);
show_list = false;
selection = false;
enter_options = false;

instance_create_depth(0, 0, -1, obj_button_agregar);