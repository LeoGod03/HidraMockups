/// @description 
if(direction <= 90 || direction >= 270)
	image_xscale = 5;
else
	image_xscale = -5;
			
scr_movements(MOVEMENTYPE.JOYSTICK);

y = clamp(y,  290, room_height);
x = clamp(x, 190, room_width - 256);