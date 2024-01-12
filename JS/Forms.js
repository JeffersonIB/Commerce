var color = 'White';

function changeColor(obj) {
    var rowObject = getParentRow(obj);
    var parentTable = document.getElementById("<%=CheckBoxListEmpleados.ClientID%>");
    if (color === '') {
        color = getRowColor();
    }
    if (obj.checked) {
        rowObject.style.backgroundColor = '#A3B1D8';
    } else {
        rowObject.style.backgroundColor = color;
        color = 'White';
    }
}

// Este método devuelve la fila padre del objeto
function getParentRow(obj) {
    do {
        obj = obj.parentElement;
    } while (obj.tagName !== "TR");
    return obj;
}

function TurnCheckBoixGridView(id) {
    var checkBoxList = document.getElementById("<%= CheckBoxListEmpleados.ClientID %>");
    var checkboxes = checkBoxList.getElementsByTagName("input");

    for (var i = 0; i < checkboxes.length; i++) {
        if (checkboxes[i].type === "checkbox") {
            checkboxes[i].checked = document.getElementById(id).checked;
            changeColor(checkboxes[i]);
        }
    }
}

function SelectAll(id) {
    var parentTable = document.getElementById("<%=CheckBoxListEmpleados.ClientID%>");
    var color = document.getElementById(id).checked ? '#A3B1D8' : 'White';

    for (var i = 0; i < parentTable.rows.length; i++) {
        var checkbox = parentTable.rows[i].getElementsByTagName("input")[0];
        checkbox.checked = document.getElementById(id).checked;
        changeColor(checkbox);
    }

    TurnCheckBoixGridView(id);
}


$(document).ready(function () {
    $('.select2').select2({
        placeholder: 'Buscar empleado',
        width: '100%',
        closeOnSelect: false,
        allowClear: true
    });

    $('.select-all').click(function () {
        $(this).closest('.select2-container').find('select > option').prop('selected', true);
        $(this).closest('.select2-container').find('select').trigger('change');
    });
});


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
