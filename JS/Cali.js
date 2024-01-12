function ajustarAnchoNotas() {
    var gridViewWidth = document.querySelector('#<%= gvIndicadores.ClientID %>').clientWidth;
    var DivNotas = document.querySelector('#notas');
    DivNotas.style.width = gridViewWidth + 'px';
}

window.onload = ajustarAnchoNotas; // Ajustar el ancho inicialmente cuando la página se carga
window.onresize = ajustarAnchoNotas; // Ajustar el ancho cuando la ventana cambia de tamaño


function seleccionarFecha(sender, args) {
    // Obtener la fecha seleccionada del calendario
    var fechaSeleccionada = sender.get_selectedDate();

    // Obtener los valores de día, mes y año de la fecha seleccionada
    var dia = fechaSeleccionada.getDate();
    var mes = fechaSeleccionada.getMonth() + 1; // Sumar 1 al mes, ya que los meses en JavaScript comienzan en 0
    var anio = fechaSeleccionada.getFullYear();

    // Realizar cualquier acción necesaria con los valores de día, mes y año
    // por ejemplo, pasarlos como parámetros a la función que realiza la llamada AJAX
    enviarParametros(dia, mes, anio);

    // Evitar que se recargue la página y que se cierre el modal
    args.set_cancel(true);
}

function enviarParametros(dia, mes, anio) {
    // Crear un objeto XMLHttpRequest para realizar la llamada AJAX
    var xhr = new XMLHttpRequest();

    // Configurar la solicitud AJAX
    xhr.open("POST", "Cali_Finca.aspx", true);

    // Establecer el tipo de contenido de la solicitud AJAX
    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");

    // Configurar la función de devolución de llamada que se ejecutará cuando se complete la solicitud AJAX
    xhr.onreadystatechange = function () {
        if (xhr.readyState === 4 && xhr.status === 200) {
            // Hacer algo con la respuesta de la solicitud AJAX, si es necesario
        }
    };

    // Crear una cadena de consulta con los valores de día, mes y año
    var parametros = "dia=" + dia + "&mes=" + mes + "&anio=" + anio;

    // Enviar la solicitud AJAX con los parámetros
    xhr.send(parametros);
}


function ShowModalAg() {
    $("#Modal_Agregar").modal("show");
}
function CloseModalAg() {
    $("#Modal_Agregar").modal("hide");
}

function ShowModalAc() {
    $("#Modal_Actualizar").modal("show");
}
function CloseModalAc() {
    $("#Modal_Actualizar").modal("hide");
}

function ShowModalCl() {
    $("#Modal_Calificar").modal("show");
}
function CloseModalCl() {
    $("#Modal_Calificar").modal("hide");
}

function ShowModalEl() {
    $("#Modal_Eliminar").modal("show");
}
function CloseModalEl() {
    $("#Modal_Eliminar").modal("hide");
}

//function ShowModalDc() {
//    $("#Modal_Documentar").modal("show");
//}
//function CloseModalDc() {
//    $("#Modal_Documentar").modal("hide");
//}

$('#btnActualizar_Click').click(function () {
    $('#Modal_Agregar').find('input[type=text]').each(function () {
        var id = $(this).data('id');
        var valor = $(this).val();
        // aquí puedes llamar a una función de C# para guardar el valor en la base de datos si ha sido modificado
        if (valor !== '') {
            $.ajax({
                type: "POST",
                url: "ActualizarValor.aspx/Actualizar",
                data: JSON.stringify({ id: id, valor: valor }),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    console.log(response.d);
                },
                error: function (xhr, status, error) {
                    console.log(error);
                }
            });
        }
    });
});

$(document).ready(function () {
    // Función para inicializar el popover
    function inicializarPopover() {
        // Obtener el valor de la columna "Tipo_Califica"
        var tipoCalificaValor = $('#gvIndicadores td:nth-child(17)').text().trim();
        // Obtener el textbox correspondiente
        var textbox = $('#txtCalificado');
        // Verificar el valor y agregar el popover adecuado
        if (tipoCalificaValor === '1') {
            textbox.attr('data-bs-toggle', 'popover');
            textbox.attr('data-bs-placement', 'right');
            textbox.attr('data-bs-content', 'Este es porcentaje');
        } else {
            textbox.attr('data-bs-toggle', 'popover');
            textbox.attr('data-bs-placement', 'right');
            textbox.attr('data-bs-content', 'Este no es porcentaje');
        }
        // Inicializar el popover
        var popover = new bootstrap.Popover(textbox);
    }
    // Evento que se ejecuta cuando se muestra el modal
    $('#Modal_Calificar').on('shown.bs.modal', function () {
        // Inicializar el popover dentro del modal
        inicializarPopover();
    });
});
