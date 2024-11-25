if(instance_exists(resource)){
    if(instance_exists(obj_widgets)){
		if(is_select==noone){
		is_select = resource;
		}
		
		if(inicializar_instancias){
			inicializar_instancias=false;
			widgets_instance.set_alpha(image_alpha);
			widgets_instance.set_rotation(image_angle);
			widgets_instance.set_scale_x(image_xscale);
			widgets_instance.set_scale_y(image_yscale);	
			widgets_instance.set_posicion_x(device_mouse_x(0));
			widgets_instance.set_posicion_y(device_mouse_y(0));
		}
		
	
		if(!(resource == is_select)){
			is_select = resource;
			widgets_instance.limpiar_widgets();
			inicializar_instancias=true;
		}
		
		//Modificamos la posicion del personaje en el GUI
		//if(!(widgets_instance.get_posicion_x()==undefined)){
		//	if(!(widgets_instance.get_posicion_x()=="")){
		//			var _valor = 0;
		//			_valor = clamp(_valor,sprite_width,global.grid_width*8);
		//			resource.x = _valor;
			//}//else{
			//	if(widgets_instance.get_scale_x() == undefined || widgets_instance.get_scale_x() = ""){
			//		resource.x = 6 * 1;
			//	}else{
			//		resource.x = (6*sprite_width );		
			//	}
			//}
		//}
		
		if(!(widgets_instance.get_posicion_y()==undefined)){
			if(!(widgets_instance.get_posicion_y()==""))
				resource.y = widgets_instance.get_posicion_y();
			else
				resource.y =  global.height * 0.20;
		}
		
			
		if(!(widgets_instance.get_rotation()==undefined)){
			if((widgets_instance.get_rotation()=="")){
				resource.image_angle = 0;
			}else
				resource.image_angle = widgets_instance.get_rotation();		
		}

		if(!(widgets_instance.get_alpha()==undefined)){
			if((widgets_instance.get_alpha()=="")){
				resource.image_alpha = 1;
			}else
				resource.image_alpha  = widgets_instance.get_alpha();
		}

		if(!(widgets_instance.get_scale_x()==undefined)){
			if((widgets_instance.get_scale_x()=="")){
				resource.image_xscale = 5;
			}else
				resource.image_xscale  = widgets_instance.get_scale_x();
		}

		if(!(widgets_instance.get_scale_y()==undefined)){
			if((widgets_instance.get_scale_y()=="")){
				resource.image_yscale = 5;
			}else
				resource.image_yscale  = widgets_instance.get_scale_y();
		}
		
	}else{
			widgets_instance = instance_create_depth(x, y, -1, obj_widgets);
		}
	}
	
	
	
	

