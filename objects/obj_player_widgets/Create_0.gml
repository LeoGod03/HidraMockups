is_select = false;
// Verificar si hay instancias existentes de obj_widgets
if (instance_exists(obj_widgets)) {
    // Encuentra la primera instancia de obj_widgets
    var _existing_widgets = instance_find(obj_widgets, 0);
    
    // Verifica que la instancia encontrada no sea nula
    if (_existing_widgets != noone) {
        // Destruir la instancia existente
        instance_destroy(_existing_widgets); // Destruir la instancia
        
        // Si deseas destruir las instancias de los objetos que se crean en obj_widgets
        with (_existing_widgets) {
            // Destruir las instancias específicas
            instance_destroy(instance_find(obj_txt_alpha, 0));
            instance_destroy(instance_find(obj_txt_scale_x, 0));
            instance_destroy(instance_find(obj_txt_scale_y, 0));
            instance_destroy(instance_find(obj_txt_rotation, 0));
        }
    }
}

// Crear una nueva instancia de obj_widgets
widgets_instance = instance_create_depth(x, y, -1, obj_widgets);
