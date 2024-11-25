instance_create_depth(x,y,-1,obj_panel_right);
alpha = instance_create_depth(x, y, -2, obj_txt_alpha);
scale_x = instance_create_depth(x, y, -2, obj_txt_scale_x);
scale_y = instance_create_depth(x, y, -2, obj_txt_scale_y);
rotation = instance_create_depth(x, y, -2, obj_txt_rotation);
posicion_x = instance_create_depth(x, y, -2, obj_txt_posicion_x);
posicion_y = instance_create_depth(x, y,-2 , obj_txt_posicion_y);

	

//Funciones para obtener los valores de mi objeto
set_alpha = function(_alpha){
	alpha.set_alpha(_alpha);

};

set_scale_y = function(_scale_y){
	scale_y.set_scale_y(_scale_y);
};

set_scale_x = function(_scale_x){
	scale_x.set_scale_x(_scale_x);
};

set_rotation = function(_rotation){
	rotation.set_rotation(_rotation);
};

set_posicion_x= function(_posicion_x){
	posicion_x.set_posicion_x(_posicion_x);
};

set_posicion_y = function(_posicion_y){
	posicion_y.set_posicion_y(_posicion_y);
};

//Funciones para establecer valores en mi objeto
get_alpha = function(){
	return alpha.get_alpha();
};

get_scale_x = function(){
	return scale_x.get_scale_x();
};

get_scale_y = function(){
	return scale_y.get_scale_y();	
};
get_rotation = function() {
		return rotation.get_rotation();
};

get_posicion_x = function(){
	return posicion_x.get_posicion_x();
};

get_posicion_y = function(){
	return posicion_y.get__posicion_y();
};

limpiar_widgets = function(){
	 alpha.limpiar_alpha();
	 scale_x.limpiar_scale_x();
	 scale_y.limpiar_scale_y();
	 rotation.limpiar_rotation();
	 posicion_x.limpiar_posicion_x();
	 posicion_y.limpiar_posicion_y();
};


