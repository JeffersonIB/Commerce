<%@ Page Title="" Language="C#" MasterPageFile="~/MP1.Master" AutoEventWireup="true" CodeBehind="Formulario_Partida.aspx.cs" Inherits="IT_Finca.Pages.Forms.Formulario_Partida" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title1" runat="server">
    Formuario partidas
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body1" runat="server">
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Beneficio
        </title>
        <link href="<%= ResolveClientUrl("~/CSS/Admin.css") %>" rel="stylesheet" />
        <script src="<%= ResolveClientUrl("~/JS/Cale.js") %>"> </script>
    </head>
    <body>
        <div class="container box">
            <center>
                <h1 class="title">Partidas
                </h1>
            </center>
        </div>
        <br />
        <!-- Tabla de Fincas -->
        <center>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <table>
                        <tr>
                            <td>
                                <div class="row">
                                    <div class="item form-group">
                                        <h5>No. partida</h5>
                                    </div>
                                    <div class="item form-group">
                                        <asp:DropDownList ID="ddlPartida" runat="server" AutoPostBack="true" CssClass="form-control" Style="width: 100%;"></asp:DropDownList>
                                        <asp:RequiredFieldValidator
                                            ID="RequiredFieldValidator1" runat="server"
                                            ControlToValidate="ddlPartida"
                                            ErrorMessage="Campo obligatorio"
                                            ForeColor="Red"
                                            ValidationGroup="Validate"
                                            InitialValue="0">
                                        </asp:RequiredFieldValidator>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </table>
                    <table class="table table-striped jambo_table bulk_action">
                        <thead>
                            <tr class="headings">
                                <th class="column-title">Descripción </th>
                                <th class="column-title">Cantidad </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="even pointer">
                                <td class="a-center ">Humedad</td>
                                <td class="a-center ">
                                    <asp:TextBox ID="CantHumedad" runat="server" type="number" CssClass="form-control" Text="0" min="0" step="0.01" placeholder="0.00" Style="width: 100%;"></asp:TextBox>
                                </td>
                            </tr>

                            <tr class="even pointer">
                                <td class="a-center ">Pergamino (QQ) </td>
                                <td class="a-center ">
                                    <asp:TextBox ID="CantPergamino" runat="server" type="number" CssClass="form-control" Text="0" min="0" step="0.01" placeholder="0.00" Style="width: 100%;"></asp:TextBox></td>
                            </tr>
                            <tr class="even pointer">
                                <td class="a-center ">Chibolita natural (QQ) </td>
                                <td class="a-center ">
                                    <asp:TextBox ID="CantChibolita" runat="server" type="number" CssClass="form-control" Text="0" min="0" step="0.01" placeholder="0.00" Style="width: 100%;"></asp:TextBox></td>
                            </tr>
                            <tr class="even pointer">
                                <td class="a-center ">Segunda (QQ) </td>
                                <td class="a-center ">
                                    <asp:TextBox ID="CantSegunda" runat="server" type="number" CssClass="form-control" Text="0" min="0" step="0.01" placeholder="0.00" Style="width: 100%;"></asp:TextBox></td>
                            </tr>
                            <tr class="even pointer">
                                <td class="a-center ">Natas (QQ) </td>
                                <td class="a-center ">
                                    <asp:TextBox ID="CantNatas" runat="server" type="number" CssClass="form-control" Text="0" min="0" step="0.01" placeholder="0.00" Style="width: 100%;"></asp:TextBox></td>
                            </tr>
                            <tr class="even pointer">
                                <td class="a-center ">Flotes (QQ) </td>
                                <td class="a-center ">
                                    <asp:TextBox ID="CantFlotes" runat="server" type="number" CssClass="form-control" Text="0" min="0" step="0.01" placeholder="0.00" Style="width: 100%;"></asp:TextBox></td>
                            </tr>
                            <tr class="even pointer">
                                <td class="a-center ">Chibolita Seco / Verde (QQ) </td>
                                <td class="a-center ">
                                    <asp:TextBox ID="CantiChibolitaSecoVerde" runat="server" type="number" CssClass="form-control" Text="0" min="0" step="0.01" placeholder="0.00" Style="width: 100%;"></asp:TextBox></td>
                            </tr>
                            <tr class="even pointer">
                                <td class="a-center ">
                                    <asp:DropDownList ID="ddlAlmacenaje" runat="server" AutoPostBack="true" CssClass="form-control" Style="width: 100%;"></asp:DropDownList>
                                    <asp:RequiredFieldValidator
                                        ID="RequiredFieldValidator2" runat="server"
                                        ControlToValidate="ddlAlmacenaje"
                                        ErrorMessage="Campo obligatorio"
                                        ForeColor="Red"
                                        ValidationGroup="Validate"
                                        InitialValue="0">
                                    </asp:RequiredFieldValidator>
                                </td>
                                <td class="a-center ">
                                    <asp:TextBox ID="CantAlmacenaje" runat="server" type="number" CssClass="form-control" Text="0" min="0" step="0.01" placeholder="0.00" Style="width: 100%;"></asp:TextBox>
                                    <asp:RequiredFieldValidator
                                        ID="RequiredFieldValidator3" runat="server"
                                        ControlToValidate="CantAlmacenaje"
                                        ErrorMessage="Campo obligatorio"
                                        ForeColor="Red"
                                        ValidationGroup="Validate"
                                        InitialValue="0">
                                    </asp:RequiredFieldValidator>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </ContentTemplate>
            </asp:UpdatePanel>
            <asp:Button ID="Agregar" runat="server" class="btn btn-primary" ValidationGroup="Validate" Text="Agregar" OnClick="Agregar_Click" />
        </center>
    </body>
    </html>
</asp:Content>
