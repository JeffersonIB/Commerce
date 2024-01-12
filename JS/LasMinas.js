function getProcesos() {
    var idLote = document.getElementById("lote").value;
    if (idLote != "") {
        $.ajax({
            type: "POST",
            url: "/Pages/Forms/LasMinas.aspx/GetProcesosByIdLote",
            data: "{'idLote': '" + idLote + "'}",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                var procesos = JSON.parse(data.d);
                var procesoDropdown = document.getElementById("proceso");
                procesoDropdown.options.length = 0;
                procesoDropdown.options[procesoDropdown.options.length] = new Option("Select Proceso", "");
                for (var i = 0; i < procesos.length; i++) {
                    procesoDropdown.options[procesoDropdown.options.length] = new Option(procesos[i].Proceso, procesos[i].Id_Proceso);
                }
            },
            error: function (result) {
                alert("Error");
            }
        });
    }
    else {
        var procesoDropdown = document.getElementById("proceso");
        procesoDropdown.options.length = 0;
        procesoDropdown.options[procesoDropdown.options.length] = new Option("Select Proceso", "");
    }
}