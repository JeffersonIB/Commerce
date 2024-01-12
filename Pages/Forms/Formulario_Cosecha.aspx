<%@ Page Title="" Language="C#" MasterPageFile="~/MP1.Master" AutoEventWireup="true" CodeBehind="Formulario_Cosecha.aspx.cs" Inherits="IT_Finca.Pages.Forms.Formulario_Cosecha" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title1" runat="server">
    Formuario Cosecha
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body1" runat="server">

    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title></title>
        <%--<link href="<%= ResolveClientUrl("~/CSS/Default.css") %>" rel="stylesheet" />--%>
        <%--<script src="<%= ResolveClientUrl("~/JS/Forms.js") %>"> </script>--%>
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
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Agregar cosecha
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
                                    <td>Lote
                                <div class="control">
                                    <div class="select">
                                        <asp:DropDownList ID="ddlLotes" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlLotes_OnSelectedIndexChanged" CssClass="form-control" Style="width: 100%;">
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RequiredFieldValidator
                                            ID="RequiredFieldValidator1" runat="server"
                                            ControlToValidate="ddlLotes"
                                            ErrorMessage="Campo obligatorio"
                                            ForeColor="Red"
                                            ValidationGroup="Validate"
                                            InitialValue="0">
                                        </asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Proceso
                                <div class="control">
                                    <div class="select">
                                        <asp:DropDownList ID="ddlProcesos" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlProcesos_OnSelectedIndexChanged" CssClass="form-control" Style="width: 100%;">
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td>Tipo pago
                                <div class="control">
                                    <div class="select">
                                        <asp:DropDownList ID="dllTipoActividad" runat="server" AutoPosBack="true" CssClass="form-control" Style="width: 100%;">
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RequiredFieldValidator
                                            ID="RequiredFieldValidator3" runat="server"
                                            ControlToValidate="dllTipoActividad"
                                            ErrorMessage="Campo obligatorio"
                                            ForeColor="Red"
                                            ValidationGroup="Validate"
                                            InitialValue="0">
                                        </asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Actividad
                                        <div class="control">
                                            <div class="select">
                                                <asp:DropDownList ID="dllActividad" runat="server" AutoPosBack="true" CssClass="form-control" Style="width: 100%;">
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                    </td>
                                    <tr>
                                        <td>
                                            <br />
                                        </td>
                                    </tr>
                                <tr>
                                    <td>Proveedores
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="scroll_checkboxes" cssclass="form-control">
                                            <asp:CheckBox ID="selectAll" runat="server" Text="Seleccionar todos" onclick="SelectAll(this.id)" />
                                            <asp:CheckBoxList ID="CheckBoxListEmpleados" runat="server" CssClass="FormText" DataTextField="Nom_Ape" DataValueField="Id_Empleado"></asp:CheckBoxList>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="LabelError" runat="server" CssClass="error-message" Visible="false"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <div class="row">
                        <div class="ml-auto">
                            <asp:Button ID="ButtonAgregarEmpleados" runat="server" ValidationGroup="Validate" class="btn btn-round btn-primary" Text="Agregar" OnClick="AgregarEmpleados_Click" />
                        </div>
                    </div>
                    <table align="center">
                        <tr>
                            <td align="center">
                                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                    <ContentTemplate>
                                        <label> <h5>Los registros se cargan en <strong> libras </strong></h5></label>
                                        <asp:GridView ID="GridViewCalificaciones" runat="server" AutoGenerateColumns="False">
                                            <Columns>
                                                <asp:BoundField DataField="Id_Empleado" HeaderText="ID Proveedor" Visible="false" />
                                                <asp:BoundField DataField="Nom_Ape" HeaderText="Nombre proveedor" />
                                                <asp:TemplateField HeaderText="Verde">
                                                    <ItemTemplate>
                                                        <asp:TextBox ID="txtVerde" runat="server" type="number" CssClass="form-control" Text="0" min="0" step="0.01" placeholder="0.00" Style="width: 100%;"></asp:TextBox>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Maduro">
                                                    <ItemTemplate>
                                                        <asp:TextBox ID="txtMaduro" runat="server" type="number" CssClass="form-control" Text="0" min="0" step="0.01" placeholder="0.00" Style="width: 100%;"></asp:TextBox>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="ml-auto">
                                    <asp:Button ID="Insertar" runat="server" class="btn btn-round btn-success" Text="Insertar" ValidationGroup="Validate" OnClick="Insertar_Click" Visible="false" />
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </body>
    </html>
</asp:Content>
