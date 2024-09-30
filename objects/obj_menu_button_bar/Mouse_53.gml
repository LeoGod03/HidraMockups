/// @description 
if(!selection) exit;

if(global.index_column == index_selection) exit;

global.index_column = index_selection;

scr_resources_change(obj_combobox_gui.selection_index);