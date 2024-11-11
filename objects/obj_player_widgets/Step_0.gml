if(instance_exists(resource)){
    if(instance_exists(obj_widgets)){
		if(is_select==noone){
		is_select = resource;
		}
	
		if(!(resource == is_select)){
			is_select = resource;
			widgets_instance.limpiar_widgets();
		
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
	
	
	
	

