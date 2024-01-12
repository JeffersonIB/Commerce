<%@ Page Title="" Language="C#" MasterPageFile="~/MP1.Master" AutoEventWireup="true" CodeBehind="Desoriente.aspx.cs" Inherits="IT_Finca.Pages.Forms.Desoriente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body1" runat="server">

    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <html xmlns="http://www.w3.org/1999/xhtml">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.min.js"></script>
    <head>
        <title></title>
        <link href="<%= ResolveClientUrl("~/CSS/Forms.css") %>" rel="stylesheet" />
        <script src="<%= ResolveClientUrl("~/JS/Forms.js") %>"> </script>
    </head>
    <body>
        <div class="container box">
            <center>
                <h1 class="title">Finca Bilbao
                </h1>
            </center>
        </div>
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Agregar Proveedores
                    </h5>
                </div>
                <div class="modal-body">
                    <div class="scroll_checkboxes" cssclass="form-control">
                        <asp:CheckBoxList ID="CheckBoxListEmpleados" runat="server" CssClass="FormText" DataTextField="Nom_Ape" DataValueField="Id_Empleado"></asp:CheckBoxList>
                    </div>
                    <br />
                    <div class="row">
                        <div class="ml-auto">
                            <asp:Button ID="ButtonAgregarEmpleados" runat="server" class="btn btn-round btn-primary" Text="Agregar" OnClick="AgregarEmpleados_Click" />
                        </div>
                    </div>
                    <br />
                </div>
            </div>
        </div>
        <div class="modal fade" id="Modal_Agregar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Agregar Actividades V2
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
                                <asp:GridView ID="GridViewCalificaciones" runat="server" AutoGenerateColumns="False">
                                    <Columns>
                                        <asp:BoundField DataField="Id_Empleado" HeaderText="ID Proveedor" Visible="false" />
                                        <asp:BoundField DataField="Nom_Ape" HeaderText="Nombre Proveedor" />
                                        <asp:TemplateField HeaderText="Lotes">
                                            <ItemTemplate>
                                                <asp:DropDownList ID="ddlLotes" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlLotes_OnSelectedIndexChanged" CssClass="form-control" Style="width: 100%;"></asp:DropDownList>
                                                <asp:RequiredFieldValidator
                                                    ID="Validator1" runat="server"
                                                    ControlToValidate="ddlLotes"
                                                    ErrorMessage="Campo obligatorio"
                                                    ForeColor="Red"
                                                    ValidationGroup="Validate"
                                                    Display="Dynamic"
                                                    InitialValue="0">
                                                </asp:RequiredFieldValidator>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Procesos">
                                            <ItemTemplate>
                                                <asp:DropDownList ID="ddlProcesos" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlProcesos_OnSelectedIndexChanged" CssClass="form-control" Style="width: 100%;"></asp:DropDownList>
                                                <asp:RequiredFieldValidator
                                                    ID="Validator2" runat="server"
                                                    ControlToValidate="ddlProcesos"
                                                    ErrorMessage="Campo obligatorio"
                                                    ForeColor="Red"
                                                    ValidationGroup="Validate"
                                                    Display="Dynamic"
                                                    InitialValue="0">
                                                </asp:RequiredFieldValidator>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Actividad">
                                            <ItemTemplate>
                                                <asp:DropDownList ID="ddlActividades" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlActividades_OnSelectedIndexChanged" CssClass="form-control" Style="width: 100%;"></asp:DropDownList>
                                                <asp:RequiredFieldValidator
                                                    ID="Validator3" runat="server"
                                                    ControlToValidate="ddlActividades"
                                                    ErrorMessage="Campo obligatorio"
                                                    ForeColor="Red"
                                                    ValidationGroup="Validate"
                                                    Display="Dynamic"
                                                    InitialValue="0">
                                                </asp:RequiredFieldValidator>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Tipo Act">
                                            <ItemTemplate>
                                                <asp:DropDownList ID="ddlTipoActividad" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlTipoActividad_OnSelectedIndexChanged" CssClass="form-control" Style="width: 100%;"></asp:DropDownList>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Cantidad">
                                            <ItemTemplate>
                                                <asp:TextBox ID="txtCantidad" runat="server" type="number" CssClass="form-control" Text="0" min="0" step="0.01" placeholder="0.00" Style="width: 100%;"></asp:TextBox>
                                                <asp:RequiredFieldValidator
                                                    ID="Validator5" runat="server"
                                                    ControlToValidate="txtCantidad"
                                                    ErrorMessage=">0"
                                                    ForeColor="Red"
                                                    ValidationGroup="Validate"
                                                    Display="Dynamic"
                                                    InitialValue="0">
                                                </asp:RequiredFieldValidator>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                        <div class="row">
                            <div class="ml-auto">
                                <asp:Label ID="LabelError" runat="server" CssClass="error-message" Visible="false"></asp:Label>
                            </div>
                            <div class="ml-auto">
                                <asp:Button ID="ButtonInsertar" runat="server" class="btn btn-round btn-success" Text="Insertar" ValidationGroup="Validate" OnClick="ButtonInsertar_Click" Visible="false" />
                                <asp:Button runat="server" ID="btnCancelar" class="btn btn-round btn-danger" Text="Cancelar" OnClientClick="CloseModalAg();return false;" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
    </html>
</asp:Content>
