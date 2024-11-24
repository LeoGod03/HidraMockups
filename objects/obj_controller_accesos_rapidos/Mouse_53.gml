/// @description 
if(global.action) exit;

if(index_selection == -1) exit;

global.action = false;


switch(index_selection){
	case ACCESSELEMENT.MOVEMENT:
		with(element){
			movement_pointer = true;
			image_blend = c_purple;
		}
		global.action = true;
		break;
	case ACCESSELEMENT.DELETE:
		instance_destroy(element);
		instance_destroy();
		break;
	case ACCESSELEMENT.VISIBLE:
		with(element)
			image_alpha = (image_alpha == 0.25)? 1: 0.25;
		break;
	case ACCESSELEMENT.PROPERTIES:
		// aqui va el accesso a los textfields
		// prueba room desde ram
		//var _room = room_add();
		//room_goto(_room);
		break;
}		