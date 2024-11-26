nombre_textfield = "";
texto = "";  // Variable para almacenar el texto ingresado
num_ingresado_permitidos = 0;
retornar = false;

posicion_en_x = noone;
posicion_en_y = noone;

activo = false;  // Para controlar si el campo está activo

_x_text_field = 0;
_y_text_field = 0;

valor_minimo = 0;
valor_maximo = 0;

get_rotation = function() {
    if(retornar){
		return texto;
	}
};

limpiar_rotation = function(){
	texto ="";
	numero_ingresado_string="";
};
