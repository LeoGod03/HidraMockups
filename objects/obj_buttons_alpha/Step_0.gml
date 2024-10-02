var _key = keyboard_lastkey; // Obtener la tecla presionada

// Verificar si la tecla presionada es un número del 0 al 1 o del teclado numérico
if ((_key >= ord("0") && _key <= ord("1")) || (_key == vk_numpad0 || _key == vk_numpad1)) {
    // Si la tecla es del teclado numérico y no es la misma que la anterior, agregar el número correspondiente al texto
    if (_key == vk_numpad0 && tecla_anterior != vk_numpad0) {
        texto += "0"; // Agregar '0' directamente
        tecla_anterior = vk_numpad0; // Actualizar la tecla anterior
    } else if (_key == vk_numpad1 && tecla_anterior != vk_numpad1) {
        texto += "1"; // Agregar '1' directamente
        tecla_anterior = vk_numpad1; // Actualizar la tecla anterior
    } else if (_key >= ord("0") && _key <= ord("1") && tecla_anterior != _key) {
        // Si la tecla está entre "0" y "1" del teclado principal, agregarla al texto
        if (string_length(texto) < max_length) {
            texto += string(_key - ord("0")); // Convertir tecla a número
            tecla_anterior = _key; // Actualizar la tecla anterior
        }
    }
} 
// Verificar si se presiona la tecla Suprimir (Delete)
else if (_key == vk_backspace) {
    texto = ""; // Borra el texto
    tecla_anterior = -1; // Restablecer la tecla anterior al borrar
} else {
    // Si se suelta la tecla, restablece la variable de la tecla anterior
    tecla_anterior = -1;
}

