texto = "";  // Variable para almacenar el texto ingresado
//max_caracteres = 20;  // Máximo de caracteres permitidos
activo = false;  // Para controlar si el campo está activo
global.panel_dos_y = 216;//se posiciona al inicio de nuestro panel
global.panel_dos_x = 1750;//se posiciona a la mitad de nustro panel 2

//variables para nuestro propio txt alpha
_x_alpha = global.panel_dos_x-80;
_y_alpha = global.panel_dos_y + 50;

num_ingresado_permitidos =1;

numero_ingresado = 0;
numero_ingresado_string= "";

//variables para nuestro propio txt scale x
_x_scale = global.panel_dos_x-80;
_y_scale = global.panel_dos_y + 250;

/***************/
activo_negativo = false;
ch_activado="";

 estado = "Inicio";
// texto = "";
 num_decimales = 0;

retornar = false;

get_scale_y = function() {
    if(retornar){
		if(activo_negativo){
			return "-"+texto;
		}else{
			return texto;
		}
		
	}
};