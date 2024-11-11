instance_create_depth(x,y,-1,obj_panel_right);
alpha = instance_create_depth(x, y, -2, obj_txt_alpha);
scale_x = instance_create_depth(x, y, -2, obj_txt_scale_x);
scale_y = instance_create_depth(x, y, -2, obj_txt_scale_y);
rotation = instance_create_depth(x, y, -2, obj_txt_rotation);


get_rotation = function() {
		return rotation.get_rotation();
};	

get_alpha = function(){
	return alpha.get_alpha();
};

get_scale_x = function(){
	return scale_x.get_scale_x();
};

get_scale_y = function(){
	return scale_y.get_scale_y();	
};

limpiar_widgets = function(){
	 alpha.limpiar_alpha();
	 scale_x.limpiar_scale_x();
	 scale_y.limpiar_scale_y();
	 rotation.limpiar_rotation();
};


