<%@ Page Title="" Language="C#" MasterPageFile="~/MP1.Master" AutoEventWireup="true" CodeBehind="Proveedores.aspx.cs" Inherits="IT_Finca.Pages.Admin.Proveedores" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title1" runat="server">
    Administración de proveedores
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body1" runat="server">

    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Administración de proveedores
        </title>
        <link href="<%= ResolveClientUrl("~/CSS/Admin.css") %>" rel="stylesheet" />
        <script src="<%= ResolveClientUrl("~/JS/Admin.js") %>"> </script>
        <script type="text/javascript">
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
        </script>

        <script type="text/javascript">
            var empleados = [];

            function filterEmployees() {
                var searchText = document.getElementById('txtSearch').value.toLowerCase();
                var checkboxes = document.getElementById('<%= CheckBoxListEmpleados.ClientID %>').getElementsByTagName('input');

                for (var i = 0; i < checkboxes.length; i++) {
                    var checkbox = checkboxes[i];
                    var employeeName = checkbox.parentNode.innerText.toLowerCase();
                    if (employeeName.indexOf(searchText) > -1) {
                        checkbox.parentNode.style.display = 'block';
                    } else {
                        checkbox.parentNode.style.display = 'none';
                    }
                }
            }
        </script>
        <style type="text/css">
            .scroll_checkboxes {
                height: 120px;
                width: 100%;
                padding: 5px;
                overflow: auto;
                border: 1px solid #ccc;
                display: block;
                padding: .375rem .75rem;
                font-size: 1rem;
                line-height: 1.5;
                color: #495057;
                background-color: #fff;
                background-clip: padding-box;
                border: 1px solid #ced4da;
                border-radius: .25rem;
                transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out
            }

            .scroll_checkboxess {
                height: 120px;
                width: 200px;
                padding: 5px;
                overflow: auto;
                border: 1px solid #ccc;
            }

            .FormText {
                FONT-SIZE: 11px;
                FONT-FAMILY: tahoma,sans-serif
            }
        </style>
    </head>
    <body>
        <div class="container box">
            <center>
                <h1 class="title">Administración de proveedores
                </h1>
            </center>
        </div>
        <!-- Modal Agregar-->
        <div class="modal fade" id="Modal_Agregar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Agregar nuevo proveedor
                        </h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <table align="center">
                                    <tr>
                                        <td>Empresa :
                                        </td>
                                        <td>
                                            <div class="control">
                                                <div class="select">
                                                    <asp:DropDownList ID="ddlEmpresas" runat="server" AutoPostBack="true" CssClass="form-control" Style="width: 100%;">
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Código:
                                    <br />
                                        </td>
                                        <td>
                                            <asp:TextBox runat="server" ID="txtCodigo_Empleado" CssClass="form-control" MaxLength="20" Style="width: 100%;"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Nombre completo :
                                    <br />
                                        </td>
                                        <td>
                                            <asp:TextBox runat="server" ID="txtNom_Ape" CssClass="form-control" Style="width: 100%;"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>DPI :
                                    <br />
                                        </td>
                                        <td>
                                            <asp:TextBox runat="server" ID="txtDPI" CssClass="form-control" type="number" MaxLength="18" Style="width: 100%;"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" align="center">
                                            <br />
                                            <asp:Button runat="server" ID="btnAgregar" class="btn btn-round btn-success" Text="Guardar" OnClick="Agregar_Click" />
                                            <asp:Button runat="server" ID="btnCancelar" class="btn btn-round btn-danger" Text="Cancelar" OnClientClick="CloseModalAg();return false;" />
                                        </td>
                                    </tr>
                                </table>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal Agregar-->

        <!-- Modal Asingar-->
        <div class="modal fade" id="Modal_Calificar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Asignar proveedor
                        </h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <ContentTemplate>
                                <table align="center">
                                    <tr>
                                        <td>
                                            <br />
                                            Proveedor :
                                            <br />
                                        </td>
                                        <td>
                                            <div class="scroll_checkboxes" cssclass="form-control">
                                                <input type="text" id="txtSearch" oninput="filterEmployees()" placeholder="Buscar por nombre" />
                                                <asp:CheckBoxList ID="CheckBoxListEmpleados" runat="server" CssClass="FormText" DataTextField="Nom_Ape" DataValueField="Id_Empleado"></asp:CheckBoxList>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <br />
                                            Empresa :
                                            <br />
                                        </td>
                                        <td>
                                            <div class="control">
                                                <div class="select">
                                                    <asp:DropDownList ID="ddEmpresas" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddEmpresas_SelectedIndexChanged" CssClass="form-control" Style="width: 100%;">
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Finca :
                                        </td>
                                        <td>
                                            <div class="control">
                                                <div class="select">
                                                    <asp:DropDownList ID="ddFincas" runat="server" AutoPostBack="true" CssClass="form-control" Style="width: 100%;">
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" align="center">
                                            <br />
                                            <asp:Button runat="server" ID="Button1" class="btn btn-round btn-success" Text="Guardar" OnClick="Asignar_Click" />
                                            <asp:Button runat="server" ID="Button2" class="btn btn-round btn-danger" Text="Cancelar" OnClientClick="CloseModalCl();return false;" />
                                        </td>
                                    </tr>
                                </table>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal Asignar-->

        <!-- Modal Actualizar -->
        <div class="modal fade" id="Modal_Actualizar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Modificar datos de proveedor
                        </h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                            <ContentTemplate>
                                <table align="center">
                                    <tr>
                                        <td>
                                            <asp:Label runat="server" ID="lId_Proveedor" Visible="false"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Empresa :
                                        </td>
                                        <td>
                                            <div class="control">
                                                <div class="select">
                                                    <asp:DropDownList ID="dEmpresas" runat="server" AutoPostBack="true" CssClass="form-control" Style="width: 100%;">
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Código:
                                    <br />
                                        </td>
                                        <td>
                                            <asp:TextBox runat="server" ID="tCodigo_Empleado" CssClass="form-control" MaxLength="20" Style="width: 100%;"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Nombre completo :
                                    <br />
                                        </td>
                                        <td>
                                            <asp:TextBox runat="server" ID="tNom_Ape" CssClass="form-control" Style="width: 100%;"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>DPI :
                                    <br />
                                        </td>
                                        <td>
                                            <asp:TextBox runat="server" ID="tDPI" CssClass="form-control" type="number" MaxLength="18" Style="width: 100%;"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" align="center">
                                            <br />
                                            <asp:Button runat="server" ID="btnActualizar" class="btn btn-round btn-success" Text="Guardar" OnClick="Actualizar_Click" />
                                            <asp:Button runat="server" ID="bnCancelar" class="btn btn-round btn-danger" Text="Cancelar" OnClientClick="CloseModalAc();return false;" />
                                        </td>
                                    </tr>
                                </table>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal Actualizar -->

        <!-- Modal Eliminar -->
        <div class="modal fade" id="Modal_Eliminar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">
                            <strong>Advertencia!
                            </strong>
                        </h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <table align="center">
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="Id_Proveedor" Visible="false"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Está seguro de eliminar : 
                                    <strong>
                                        <asp:Label runat="server" ID="Proveedor" Visible="true"></asp:Label>
                                    </strong>
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    <br />
                                    <asp:Button runat="server" ID="Eliminar" class="btn btn-round btn-success" Text="Eliminar" OnClick="Eliminar_Click" />
                                    <asp:Button runat="server" ID="Cancelar" class="btn btn-round btn-danger" Text="Cancelar" OnClientClick="CloseModalEl();return false;" />
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal Eliminar -->
        <br />
        <!-- Tabla de Fincas -->
        <center>
            <table>
                <tr>
                    <td>
                        <div class="row">
                            <div class="ml-auto">
                                <asp:Button ID="Agregar" runat="server" class="btn btn-round btn-primary" Text="Nuevo proveedor" OnClientClick="ShowModalAg();return false;" />
                            </div>
                            <div class="ml-auto">
                                <asp:Button ID="Asignar" runat="server" class="btn btn-round btn-primary" Text="Asignar proveedor" OnClientClick="ShowModalCl();return false;" />
                            </div>
                            <div class="ml-auto">
                                <asp:TextBox ID="txtBuscarProveedor" runat="server" placeholder="Buscar por proveedor" CssClass="form-control" MaxLength="200" Style="width: auto;"></asp:TextBox>
                            </div>
                            <div class="ml-auto">
                                <asp:Button ID="btnBuscar" runat="server" Text="Buscar" class="btn btn-round btn-success" OnClick="btnBuscar_Click" />
                            </div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="gvProveedores" runat="server"
                            DataKeyNames="Id_Proveedor"
                            PageSize="17"
                            GridLines="both"
                            AllowPaging="true"
                            CssClass="mydatagrid"
                            PagerStyle-CssClass="pager"
                            HeaderStyle-CssClass="header"
                            RowStyle-CssClass="rows"
                            GroupingEnabled="true"
                            HorizontalAlign="Center"
                            ShowHeaderWhenEmpty="True"
                            AutoGenerateColumns="False"
                            EmptyDataText="Sin datos"
                            EmptyDataRowStyle-ForeColor="Red"
                            OnRowCommand="gvProveedores_OnRowCommand"
                            OnPageIndexChanging="gvProveedores_PageIndexChanging">
                            <Columns>
                                <asp:TemplateField HeaderText="Id_Empresa" Visible="false">
                                    <ItemTemplate>
                                        <asp:Label ID="gvId_Empresa" runat="server" Text='<%#Eval("Id_Empresa") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Empresa" Visible="true">
                                    <ItemTemplate>
                                        <asp:Label ID="gvEmpresa" runat="server" Text='<%#Eval("Empresa") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Id_Finca" Visible="false">
                                    <ItemTemplate>
                                        <asp:Label ID="gvId_Finca" runat="server" Text='<%#Eval("Id_Finca") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Finca" Visible="true">
                                    <ItemTemplate>
                                        <asp:Label ID="gvFinca" runat="server" Text='<%#Eval("Finca") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Id_Proveedor" Visible="false">
                                    <ItemTemplate>
                                        <asp:Label ID="gvId_Proveedor" runat="server" Text='<%#Eval("Id_Proveedor") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Codigo_Empleado" Visible="false">
                                    <ItemTemplate>
                                        <asp:Label ID="gvCodigo_Empleado" runat="server" Text='<%#Eval("Codigo_Empleado") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Nom_Ape" Visible="false">
                                    <ItemTemplate>
                                        <asp:Label ID="gvNom_Ape" runat="server" Text='<%#Eval("Nom_Ape") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Proveedor" Visible="true">
                                    <ItemTemplate>
                                        <asp:Label ID="gvProveedor" runat="server" Text='<%#Eval("Proveedor") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="DPI" Visible="true">
                                    <ItemTemplate>
                                        <asp:Label ID="gvDPI" runat="server" Text='<%#Eval("DPI") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Modificar">
                                    <ItemTemplate>
                                        <asp:ImageButton ID="btnEditar" runat="server" ImageUrl="~/Pages/Img/Editar.png" CommandName='ShowModalAc' CommandArgument='<%#Eval("Id_Proveedor") %>' style="display: block; margin: 0 auto;" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Eliminar">
                                    <ItemTemplate>
                                        <asp:ImageButton ID="btnEliminar" runat="server" ImageUrl="~/Pages/Img/Eliminar.png" CommandName='ShowModalEl' CommandArgument='<%#Eval("Id_Proveedor") %>' style="display: block; margin: 0 auto;" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </center>
    </body>
    </html>
</asp:Content>
