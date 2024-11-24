/// @description 
if(element == noone) exit;

x = element.x;
y = element.y - element.sprite_height / 2;

if(global.position_cursor_x < x - SIZEPREF || global.position_cursor_x > x + SIZEPREF) {
	index_selection = -1;
	exit;
}
if(global.position_cursor_y > y || global.position_cursor_y < y - SIZEPREF * 0.5){
	index_selection = -1;
	exit;
}

// se hace el calculo de el indice suponiendo que esta dividio en casillas de tamaño SIZEPREF/2
index_selection = floor((global.position_cursor_x - (x - SIZEPREF)) / (SIZEPREF * 0.5));


