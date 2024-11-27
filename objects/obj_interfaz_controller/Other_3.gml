/// @description
if(show_question("¿Quieres guardar antes de salir?")){
	global.list_json[global.index_room] = scr_generate_json();
	scr_file_write();
}