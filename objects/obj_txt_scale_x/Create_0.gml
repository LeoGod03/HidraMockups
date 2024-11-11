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
_y_scale = global.panel_dos_y + 150;

/***************/
activo_negativo = false;
ch_activado="";

 estado = "Inicio";
 num_decimales = 0;

retornar = false;


get_scale_x = function() {
    if(retornar){
		if(activo_negativo){
			if(string_length(texto)>0){ 
				return "-"+texto;
			}else{
				activo_negativo = false;
			}
		}else{
			return texto;
		}
		
	}
};

limpiar_scale_x = function(){
	texto = "";
	activo_negativo = false;
};
