function scr_change_sprites(){
	
	if(direction > 22.5 && direction <= 67.5)
		sprite_index = sprites[1];
	else if(direction > 67.5 && direction <= 112.5)
		sprite_index = sprites[0];
	else if(direction > 112.5 && direction <= 157.5)
		sprite_index = sprites[2];
}