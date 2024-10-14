function scr_movements(_type){
	
	switch(_type){
		case MOVEMENTYPE.DRAGMOUSE:
			scr_movement_drag();
			break;
		case MOVEMENTYPE.PAD:
			scr_movement_keyboards();
			break;
		case MOVEMENTYPE.POINTCLICK:
			scr_movement_click();
			break;
		case MOVEMENTYPE.JOYSTICK:
			scr_movement_joystick();
			break;
	}

}