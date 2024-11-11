if(instance_exists(resource)){
    if(instance_exists(obj_widgets)){
		if(is_select==noone){
		is_select = resource;
		}
	
		if(!(resource == is_select)){
			is_select = resource;
			widgets_instance.limpiar_widgets();
		
		}
		if(!(widgets_instance.get_rotation()==undefined) && !(widgets_instance.get_rotation()=="")){
		resource.image_angle = widgets_instance.get_rotation();		
		}

		if(!(widgets_instance.get_alpha()==undefined) && !(widgets_instance.get_alpha()=="")){
			resource.image_alpha  = widgets_instance.get_alpha();
		}

		if(!(widgets_instance.get_scale_x()==undefined) && !(widgets_instance.get_scale_x()=="")){
			//show_message_async( widgets_instance.get_scale_x());
			resource.image_xscale  = widgets_instance.get_scale_x();
		}

		if(!(widgets_instance.get_scale_y()==undefined) && !(widgets_instance.get_scale_y()=="")){
			resource.image_yscale  = widgets_instance.get_scale_y();
		}
		
	}else{
			widgets_instance = instance_create_depth(x, y, -1, obj_widgets);
		}
	}
	
	
	
	

