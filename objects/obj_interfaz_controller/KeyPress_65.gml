/// @description 
var _file;
_file = get_open_filename("text file|*.txt", "");
if (_file != "")
{
    file_text_open_read(_file);
	show_debug_message(_file);
	
}