<%@ Page Title="" Language="C#" MasterPageFile="~/MP.Master" AutoEventWireup="true" CodeBehind="FormsV1.aspx.cs" Inherits="IT_Finca.Pages.Test.FromV1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    GRUPO ENLASA
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">

    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Finca
        </title>
        <%--<link href="<%= ResolveClientUrl("~/CSS/Default.css") %>" rel="stylesheet" />--%>
    </head>
    <body>
        <div class="container box">
            <!-- Modal Agregar-->
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Agregar actividades V1
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
                                    <%--<tr>
                                <td colspan="4">Finca
                                    <div class="control">
                                        <div class="select">
                                            <asp:DropDownList ID="ddlFinca" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlFinca_SelectedIndexChanged" CssClass="form-control" Style="width: 100%;">
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="4">
                                    <asp:RequiredFieldValidator
                                        ID="RequiredFieldValidator3" runat="server"
                                        ControlToValidate="ddlFinca"
                                        ErrorMessage="Campo obligatorio"
                                        ForeColor="Red"
                                        ValidationGroup="Validate"
                                        InitialValue="0">
                                    </asp:RequiredFieldValidator>
                                </td>
                            </tr>--%>
                                    <tr>
                                        <td colspan="4">Proveedor
                                    <div class="control">
                                        <div class="select">
                                            <asp:DropDownList ID="ddlEmpleados" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlEmpleados_OnSelectedIndexChanged" CssClass="form-control" Style="width: 100%;">
                                            </asp:DropDownList>
                                        </div>
                                    </div>

                                        </td>
                                        <%-- <td>Código
                                    <div class="control">
                                        <div class="select">
                                            <asp:DropDownList ID="ddlCodigo_Empleado" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlCodigo_Empleado_OnSelectedIndexChanged" CssClass="form-control" Style="width: 100%;">
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </td>--%>
                                    </tr>
                                    <tr>
                                        <td colspan="3">
                                            <asp:RequiredFieldValidator
                                                ID="RequiredFieldValidator1" runat="server"
                                                ControlToValidate="ddlEmpleados"
                                                ErrorMessage="Campo obligatorio"
                                                ForeColor="Red"
                                                ValidationGroup="Validate"
                                                InitialValue="0">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4">Lote
                                    <div class="control">
                                        <div class="select">
                                            <asp:DropDownList ID="ddlLotes" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlLotes_OnSelectedIndexChanged" CssClass="form-control" Style="width: 100%;">
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">
                                            <asp:RequiredFieldValidator
                                                ID="RequiredFieldValidator2" runat="server"
                                                ControlToValidate="ddlLotes"
                                                ErrorMessage="Campo obligatorio"
                                                ForeColor="Red"
                                                ValidationGroup="Validate"
                                                InitialValue="0">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4">Proceso
                                    <div class="control">
                                        <div class="select">
                                            <asp:DropDownList ID="ddlProcesos" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlProcesos_OnSelectedIndexChanged" CssClass="form-control" Style="width: 100%;">
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4">
                                            <asp:RequiredFieldValidator
                                                ID="RequiredFieldValidator4" runat="server"
                                                ControlToValidate="ddlProcesos"
                                                ErrorMessage="Campo obligatorio"
                                                ForeColor="Red"
                                                ValidationGroup="Validate"
                                                InitialValue="0">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">Actividad
                                    <div class="control">
                                        <div class="select">
                                            <asp:DropDownList ID="ddlActividad1" runat="server" AutoPosBack="true" OnSelectedIndexChanged="ddlActividad1_OnSelectedIndexChanged" CssClass="form-control" Style="width: 100%;">
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                        </td>
                                        <td>Tipo pago
                                    <div class="control">
                                        <div class="select">
                                            <asp:DropDownList ID="ddlTipoTrabajo1" runat="server" AutoPosBack="true" OnSelectedIndexChanged="ddlTipoTrabajo1_OnSelectedIndexChanged" CssClass="form-control" Style="width: 100%;">
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                        </td>
                                        <td>Cantidad
                                    <asp:TextBox ID="txtCantidad1" runat="server" type="number" CssClass="form-control" min="0" step="0.01" Text="0" placeholder="0.00" Style="width: 100%;"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:RequiredFieldValidator
                                                ID="rfvActividad" runat="server"
                                                ControlToValidate="ddlActividad1"
                                                ErrorMessage="Campo obligatorio"
                                                ForeColor="Red"
                                                ValidationGroup="Validate"
                                                InitialValue="0">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:RequiredFieldValidator
                                                ID="rfvTipoTrabajo" runat="server"
                                                ControlToValidate="ddlTipoTrabajo1"
                                                ErrorMessage="Campo obligatorio"
                                                ForeColor="Red"
                                                ValidationGroup="Validate"
                                                InitialValue="0">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:RequiredFieldValidator
                                                ID="RequiredFieldValidator5" runat="server"
                                                ControlToValidate="txtCantidad1"
                                                ErrorMessage="Valor != 0"
                                                ForeColor="Red"
                                                ValidationGroup="Validate"
                                                InitialValue="0">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td colspan="4">
                                            <p>
                                                <a data-toggle="collapse" href="#collapseExample2" role="button" aria-expanded="false" aria-controls="collapseExample">Actividad 2 ↓
                                                </a>
                                            </p>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <div class="collapse" id="collapseExample2">
                                                <div>
                                                    Actividad
                                            <asp:DropDownList ID="ddlActividad2" runat="server" OnSelectedIndexChanged="ddlActividad2_OnSelectedIndexChanged" Style="width: 100%;" AutoPosBack="true" CssClass="form-control">
                                            </asp:DropDownList>
                                                </div>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="collapse" id="collapseExample2">
                                                <div>
                                                    Tipo pago
                                            <asp:DropDownList ID="ddlTipoTrabajo2" runat="server" OnSelectedIndexChanged="ddlTipoTrabajo2_OnSelectedIndexChanged" Style="width: 100%;" AutoPosBack="true" CssClass="form-control">
                                            </asp:DropDownList>
                                                </div>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="collapse" id="collapseExample2">
                                                <div>
                                                    Cantidad
                                            <asp:TextBox ID="txtCantidad2" runat="server" type="number" CssClass="form-control" min="0" step="0.01" Text="0" placeholder="0.00" Style="width: 100%;"></asp:TextBox>

                                                </div>
                                            </div>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td colspan="4">
                                            <p>
                                                <a data-toggle="collapse" href="#collapseExample3" role="button" aria-expanded="false" aria-controls="collapseExample">Actividad 3 ↓
                                                </a>
                                            </p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <div class="collapse" id="collapseExample3">
                                                <div>
                                                    Actividad
                                            <asp:DropDownList ID="ddlActividad3" runat="server" OnSelectedIndexChanged="ddlActividad3_OnSelectedIndexChanged" Style="width: 100%;" AutoPosBack="true" CssClass="form-control">
                                            </asp:DropDownList>
                                                </div>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="collapse" id="collapseExample3">
                                                <div>
                                                    Tipo pago
                                            <asp:DropDownList ID="ddlTipoTrabajo3" runat="server" OnSelectedIndexChanged="ddlTipoTrabajo3_OnSelectedIndexChanged" Style="width: 100%;" AutoPosBack="true" CssClass="form-control">
                                            </asp:DropDownList>
                                                </div>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="collapse" id="collapseExample3">
                                                <div>
                                                    Cantidad
                                            <asp:TextBox ID="txtCantidad3" runat="server" type="number" CssClass="form-control" min="0" step="0.01" Text="0" placeholder="0.00" Style="width: 100%;"></asp:TextBox>

                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <br />
                                        </td>
                                    </tr>
                                </table>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                        <table>
                            <tr>
                            <td colspan="4">
                                <center>
                                    <asp:Button ID="Agregar" runat="server" class="btn btn-primary" Text="Agregar" ValidationGroup="Validate" OnClick="Agregar_Click" />
                                </center>
                            </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <center>
            <asp:Button Text="Regresar" runat="server" class="btn btn-round btn-success" OnClick="Regresar_Click" />
            <asp:Button Text="Salir" runat="server" class="btn btn-round btn-danger" OnClick="Salir_Click" />
        </center>
    </body>
    </html>
</asp:Content>
