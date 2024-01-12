//function agregarEstudiantes() {
//    var estudiantesDropdown = document.getElementById("estudiantes");
//    var tablaEstudiantes = document.getElementById("tablaEstudiantes");

//    // Obtener los estudiantes seleccionados
//    var estudiantesSeleccionados = obtenerEstudiantesSeleccionados(estudiantesDropdown);

//    // Agregar los estudiantes a la tabla
//    estudiantesSeleccionados.forEach(function (estudianteId) {
//        var row = tablaEstudiantes.insertRow();
//        var cell1 = row.insertCell(0);
//        var cell2 = row.insertCell(1);
//        cell1.innerHTML = estudiantesDropdown.options[estudianteId].text;
//        cell2.innerHTML = '<input type="text" id="calificacion-' + estudianteId + '">';
//    });
//}

//function obtenerEstudiantesSeleccionados(dropdown) {
//    var estudiantesSeleccionados = [];
//    for (var i = 0; i < dropdown.options.length; i++) {
//        if (dropdown.options[i].selected) {
//            estudiantesSeleccionados.push(i);
//        }
//    }
//    return estudiantesSeleccionados;
//}
function agregarEstudiantes() {
    var estudiantesDropdown = document.getElementById("estudiantes");
    var tablaEstudiantes = document.getElementById("tablaEstudiantes");

    // Recorrer las opciones seleccionadas en el DropDownList
    for (var i = 0; i < estudiantesDropdown.options.length; i++) {
        var opcion = estudiantesDropdown.options[i];
        if (opcion.selected) {
            // Crear una nueva fila en la tabla
            var nuevaFila = document.createElement("tr");

            // Crear celdas para el estudiante y la calificación
            var celdaEstudiante = document.createElement("td");
            var celdaCalificacion = document.createElement("td");

            // Establecer el texto del estudiante y la calificación
            celdaEstudiante.innerHTML = opcion.text;
            celdaCalificacion.innerHTML = "<input type='text' />";

            // Agregar las celdas a la fila
            nuevaFila.appendChild(celdaEstudiante);
            nuevaFila.appendChild(celdaCalificacion);

            // Agregar la fila a la tabla
            tablaEstudiantes.appendChild(nuevaFila);
        }
    }
}
