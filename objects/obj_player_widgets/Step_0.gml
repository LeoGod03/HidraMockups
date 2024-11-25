if(instance_exists(resource)){
    if(instance_exists(obj_widgets)){
		if(is_select==noone){
		is_select = resource;
		}
		
		if(!(resource == is_select)){
			is_select = resource;
			widgets_instance.limpiar_widgets();
			inicializar_instancias=true;
		}
		
		if(inicializar_instancias){
			inicializar_instancias=false;
			
			widgets_instance.set_alpha(resource.image_alpha);
			widgets_instance.set_rotation(resource.image_angle);
			widgets_instance.set_scale_x(resource.image_xscale);
			widgets_instance.set_scale_y(resource.image_yscale);	
			widgets_instance.set_posicion_x(resource.x);
			widgets_instance.set_posicion_y(resource.y);
		}else{
					if(resource.movement_pointer){
						widgets_instance.set_posicion_x(resource.x);
						widgets_instance.set_posicion_y(resource.y);
					}
					
					//Cuando el widget se desactiva y tiene un valor vacio tomamos el valor del objeto
					if(!widgets_instance.posicion_y.activo){
						widgets_instance.posicion_y.texto= resource.y;
					}
					
					if(!widgets_instance.posicion_x.activo){
						widgets_instance.posicion_x.texto= resource.x;
					}
				
					if(!widgets_instance.alpha.activo){
						widgets_instance.alpha.texto= resource.image_alpha;
					}
				
					if(!widgets_instance.rotation.activo){
						widgets_instance.rotation.texto= resource.image_angle;
					}
				
					if(!widgets_instance.scale_x.activo){
						widgets_instance.scale_x.texto = resource.image_xscale;
					}
				
					if(!widgets_instance.scale_y.activo){
						widgets_instance.scale_y.texto = resource.image_yscale;
					}
				
				
					//Modificamos la posicion del personaje en el GUI
					if(!(widgets_instance.get_posicion_x()==undefined)){
						if(!(widgets_instance.get_posicion_x()=="")){
								resource.x = widgets_instance.get_posicion_x();
						}else{
							resource.x =  resource.sprite_width / 2;
							}
				}	
		
	
				if(!(widgets_instance.get_posicion_y()==undefined)){
					if(!(widgets_instance.get_posicion_y()=="")){
						resource.y = widgets_instance.get_posicion_y();
				
					}else{
						
						resource.y =  resource.sprite_height / 2;
						}
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
						resource.image_xscale = 1;
					}else
						resource.image_xscale  = widgets_instance.get_scale_x();
				}

				if(!(widgets_instance.get_scale_y()==undefined)){
					if((widgets_instance.get_scale_y()=="")){
						resource.image_yscale = 1;
					}else
						resource.image_yscale  = widgets_instance.get_scale_y();
				}
		}
			
	}else{
			widgets_instance = instance_create_depth(x, y, -1, obj_widgets);
		}
	}
	
	
	
	

