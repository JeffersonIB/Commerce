<%@ Page Title="" Language="C#" MasterPageFile="~/MP.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="IT_Finca.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    GRUPO ENLASA
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <!DOCTYPE html>
    <html>
    <head>
        <title>
        </title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Meta, title, CSS, favicons, etc. -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Bootstrap -->
        <link href="<%= ResolveClientUrl("~/vendors/bootstrap/dist/css/bootstrap.min.css") %>" rel="stylesheet">
        <!-- Font Awesome -->
        <link href="<%= ResolveClientUrl("~/vendors/font-awesome/css/font-awesome.min.css") %>" rel="stylesheet">
        <!-- NProgress -->
        <link href="<%= ResolveClientUrl("~/vendors/nprogress/nprogress.css") %>" rel="stylesheet">
        <!-- Animate.css -->
        <link href="<%= ResolveClientUrl("~/vendors/animate.css/animate.min.css") %>" rel="stylesheet">
        <!-- Custom Theme Style -->
        <link href="<%= ResolveClientUrl("~/build/css/custom.min.css") %>" rel="stylesheet">
    </head>

    <body class="login">
        <div>
            <a class="hiddenanchor" id="signup"></a>
            <a class="hiddenanchor" id="signin"></a>
            <div class="login_wrapper">
                <div class="animate form login_form">
                    <section class="login_content">
                        <h1>Inicio de Sessión</h1>
                        <div>
                            <input type="text" class="form-control" id="Usuario" required="true" placeholder="Correo" runat="server" />
                        </div>
                        <div>
                            <input type="password" class="form-control" id="Clave" required="true" TextMode="Password" placeholder="Contraseña" runat="server" />
                        </div>
                        <div>
                            <asp:Button runat="server" ID="Entrar" class="btn btn-round btn-success" Text="Ingresar" OnClick="Ingresar_Click" />
                            <a class="reset_pass" href="#">¿Olvidaste tu contraseña?</a>
                        </div>
                        <div class="clearfix"></div>
                        <div class="separator">
                            <p class="change_link">
                                ¿Nuevo en el sitio?
                            <a href="#" class="to_register">Crear una cuenta </a>
                            </p>
                            <div class="clearfix"></div>
                            <br />
                            <div>
                                <h1><i class="fa fa-leaf"></i>Actividades Finca!</h1>
                                <p>©2023 Todos los derechos reservados. IT Grupo Enlasa</p>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </body>
    </html>
</asp:Content>
