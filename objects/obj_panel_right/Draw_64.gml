if(!panel_right) exit;
if(global.play_mockup) exit;

var _border=4;
draw_set_color(c_black);
draw_rectangle(global.width * 0.8, global.height * 0.20, global.width, global.height, 0);
draw_set_color(c_white);
draw_rectangle(global.width * 0.8 + _border,global.height * 0.20 + _border, global.width - _border, global.height - _border, 0);
draw_set_color(c_black);
