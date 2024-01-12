<%@ Page Title="" Language="C#" MasterPageFile="~/MP1.Master" AutoEventWireup="true" CodeBehind="Contrasena.aspx.cs" Inherits="IT_Finca.Pages.Extras.Contrasena" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title1" runat="server">
    Contraseña
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body1" runat="server">

    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title></title>
        <link href="<%= ResolveClientUrl("~/CSS/Cali.css") %>" rel="stylesheet" />
        <script src="<%= ResolveClientUrl("~/JS/Cali.js") %>"> </script>
        <script type="text/javascript">
            function togglePasswordVisibility() {
                var passwordInput = document.getElementById("Password");
                var toggleIcon = document.getElementById("togglePassword");

                if (passwordInput.type === "password") {
                    passwordInput.type = "text";
                    toggleIcon.innerHTML = "&#128064;"; // Cambiar el ícono a ojo cerrado
                } else {
                    passwordInput.type = "password";
                    toggleIcon.innerHTML = "&#128065;"; // Cambiar el ícono a ojo abierto
                }
            }
        </script>
    </head>
    <body>
        <div class="container box">
            <center>
                <h1 class="title">Cambiar contraseña
                </h1>
            </center>
        </div>
        <br />
        <div id="modal" runat="server">
            <div class="modal-dialog modal-xl" role="document">
                <div class="modal-content">
                    <div class="modal-body">
                        <center>
                            <table class="table table-striped jambo_table bulk_action">
                                <tr>
                                    <td colspan="2" align="center">
                                        <h3>
                                            <span>Bienvenido,</span>
                                            <span class="user-name">
                                                <asp:Label CssClass="navbar-link" runat="server" ID="lblNombre">  </asp:Label>
                                                <asp:Label CssClass="navbar-link" runat="server" ID="lblApellido">  </asp:Label>
                                            </span>
                                        </h3>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Contraseña actual
                                    </td>
                                    <td>
                                        <div style="position: relative;">
                                            <asp:TextBox ID="Password" runat="server" Type="password" CssClass="form-control" ClientIDMode="Static" />
                                            <span id="togglePassword" class="toggle-password" onclick="togglePasswordVisibility()" style="position: absolute; right: 10px; top: 10px; cursor: pointer;">&#128065;</span>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <p>La contraseña debe contener al menos un número, una letra en mayúscula y un carácter especial</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Nueva contraseña
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="regexValidator" runat="server"
                                            ControlToValidate="txtPassword"
                                            ValidationExpression="^(?=.*\d)(?=.*[A-Z])(?=.*\W).*$"
                                            ErrorMessage="La contraseña debe contener al menos un número, una letra en mayúscula y un carácter especial."
                                            Display="Dynamic" ForeColor="Red" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>Confirmar contraseña
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtPassword2" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                                        <asp:CompareValidator ID="compareValidator" runat="server"
                                            ControlToValidate="txtPassword2"
                                            ControlToCompare="txtPassword"
                                            Operator="Equal"
                                            ErrorMessage="Las contraseñas no coinciden."
                                            Display="Dynamic" ForeColor="Red" />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center">
                                        <br />
                                        <asp:Button ID="Button4" runat="server" class="btn btn-round btn-primary" Text="Actualizar" OnClick="Actualizar_Click" />
                                        <asp:Button ID="Button0" runat="server" class="btn btn-round btn-danger" Text="Cancelar" OnClientClick="CloseModalDt();return false;" />
                                    </td>
                                </tr>
                            </table>
                        </center>
                    </div>
                </div>
            </div>
        </div>
    </body>
    </html>
</asp:Content>
