<%@ Page Title="" Language="C#" MasterPageFile="~/MP.Master" AutoEventWireup="true" CodeBehind="Index1.aspx.cs" Inherits="IT_Finca.Index1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    GRUPO ENLASA
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <!DOCTYPE html>
    <html>
    <head>
        <title></title>
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
                        <h1>Seleccionar finca</h1>
                        <div>
                            <div class="control">
                                <div class="select">
                                    <asp:DropDownList ID="ddlFincas" runat="server" AutoPostBack="true" CssClass="form-control" Style="width: 100%;">
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        <div>
                            <asp:Button runat="server" ID="Ingresar" class="btn btn-round btn-success" OnClick="IngresarClick" Text="Ingresar" />
                        </div>
                        <div class="clearfix"></div>
                        <div class="separator">
                            <p class="change_link">
                                ¿Nuevo en el sitio?
                            <a href="#" class="to_register">Reliaza registros por finca </a>
                            </p>
                            <div class="clearfix"></div>
                            <br />
                            <div>
                                <h1><i class="fa fa-leaf"></i>  Fincas!</h1>
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
