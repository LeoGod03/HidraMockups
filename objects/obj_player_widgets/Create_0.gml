//global.is_select_player=id;
resource = noone;
is_select = noone;
widgets_instance = noone;
inicializar_instancias = true;

text_prueba = instance_create_depth(x, y,-2 , obj_text_field);

global.panel_dos_y = 216;//se posiciona al inicio de nuestro panel
global.panel_dos_x = 1770;//se posiciona a la mitad de nustro panel 2

text_prueba._x_text_field= global.panel_dos_x - 80;
text_prueba._y_text_field= global.panel_dos_y + 600;
text_prueba.nombre_textfield ="Prueba" ; 

text_prueba.valor_minimo = "0.25";
text_prueba.valor_maximo ="9";