texto = "";  // Variable para almacenar el texto ingresado
//max_caracteres = 20;  // Máximo de caracteres permitidos
activo = false;  // Para controlar si el campo está activo
global.panel_dos_y = 216;//se posiciona al inicio de nuestro panel
global.panel_dos_x = 1770;//se posiciona a la mitad de nustro panel 2

//variables para nuestro propio txt alpha
_x_alpha = global.panel_dos_x+80;
_y_alpha = global.panel_dos_y + 50;

num_ingresado_permitidos =1;
numero_ingresado=0;

 estado = "Inicio";

 num_decimales = 0;
 retornar = false;
 
 get_alpha = function(){
	 if(retornar){
		 return texto;
	 }
 };

limpiar_alpha = function(){
	texto="";
};

set_alpha = function( _alpha){
	texto = _alpha;
};