$(document).ready(function () {
    // Obtener el botón y el modal
    var openModalButton = document.getElementById("openModalButton");
    var modal = document.getElementById("myModal");

    // Cuando se haga clic en el botón, mostrar el modal
    openModalButton.addEventListener("click", function () {
        modal.style.display = "block";
    });

    // Cuando se haga clic en el botón de cerrar, ocultar el modal
    var closeButton = document.getElementsByClassName("close")[0];
    closeButton.addEventListener("click", function () {
        modal.style.display = "none";
    });

    // Cuando se haga clic fuera del modal, ocultarlo
    window.addEventListener("click", function (event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    });

    // Cuando se seleccione un valor en ddlEmpresas, cargar ddlFincas
    $("#<%=ddlEmpresas.ClientID%>").change(function () {
        var selectedValue = $(this).val();
        var ddlFincas = $("#<%=ddlFincas.ClientID%>");
        $.ajax({
            type: "POST",
            //url: "Modal_DDL_Sin_Recargar.aspx/GetFincas",
            //url: "<%= ResolveClientUrl("~/Pages/Test/Modal_DDL_Sin_Recargar.aspx/GetFincas") %>",
            //url: "~/Pages/Test/Modal_DDL_Sin_Recargar.aspx/GetFincas",
            url: "Modal_DDL_Sin_Recargar.aspx/GetFincas",
            data: JSON.stringify({ IdEmpresa: selectedValue }),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (response) {
                ddlFincas.empty(); // Limpiar los elementos existentes en ddlFincas

                $.each(response.d, function (key, value) {
                    ddlFincas.append($("<option></option>").val(value.Id_Finca).html(value.Finca));
                });
            },
            error: function (response) {
                console.log(response);
            }
        });
    });
});

