// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scr_numero_decimal(_numero){
	if(string_count(".",_numero)==1 && string_digits(_numero) != ""){
		return true;
		
	}
	return false;
}