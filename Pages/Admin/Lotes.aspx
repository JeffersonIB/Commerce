<%@ Page Title="" Language="C#" MasterPageFile="~/MP1.Master" AutoEventWireup="true" CodeBehind="Lotes.aspx.cs" Inherits="IT_Finca.Pages.Admin.Lotes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title1" runat="server">
    Administración de lotes
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body1" runat="server">

    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Administración de lotes
        </title>
        <link href="<%= ResolveClientUrl("~/CSS/Admin.css") %>" rel="stylesheet" />
        <script src="<%= ResolveClientUrl("~/JS/Admin.js") %>"> </script>
    </head>
    <body>
        <div class="container box">
            <center>
                <h1 class="title">Administración de lotes
                </h1>
            </center>
        </div>
        <!-- Modal Agregar-->
        <div class="modal fade" id="Modal_Agregar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Agregar nuevo lote
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
                                                    <asp:DropDownList ID="ddlEmpresas" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlEmpresas_SelectedIndexChanged" CssClass="form-control" Style="width: 100%;">
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
                                                    <asp:DropDownList ID="ddlFincas" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlFincas_SelectedIndexChanged" CssClass="form-control" Style="width: 100%;">
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Lote :
                                    <br />
                                        </td>
                                        <td>
                                            <asp:TextBox runat="server" ID="txtLote" CssClass="form-control" MaxLength="200" Style="width: auto;"></asp:TextBox>
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

        <!-- Modal Actualizar -->
        <div class="modal fade" id="Modal_Actualizar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Modificar datos de lote
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
                                            <asp:Label runat="server" ID="lbId_Lote" Visible="false"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Empresa :
                                        </td>
                                        <td>
                                            <div class="control">
                                                <div class="select">
                                                    <asp:DropDownList ID="ddEmpresas" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddEmpresas_SelectedIndexChanged" CssClass="form-control" Style="width: 100%;">
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                            <%--<asp:Label runat="server" ID="lbEmpresas" CssClass="form-control" Style="width: 100%;"></asp:Label>--%>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Finca :
                                        </td>
                                        <td>
                                            <div class="control">
                                                <div class="select">
                                                    <asp:DropDownList ID="ddFincas" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddFincas_SelectedIndexChanged" CssClass="form-control" Style="width: 100%;">
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                            <%--<asp:Label runat="server" ID="lbFincas" CssClass="form-control" Style="width: 100%;"></asp:Label>--%>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Lote :
                                    <br />
                                        </td>
                                        <td>
                                            <asp:TextBox runat="server" ID="txLote" CssClass="form-control" MaxLength="200" Style="width: auto;"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" align="center">
                                            <br />
                                            <asp:Button runat="server" ID="btActualizar" class="btn btn-round btn-success" Text="Guardar" OnClick="Actualizar_Click" />
                                            <asp:Button runat="server" ID="btCancelar" class="btn btn-round btn-danger" Text="Cancelar" OnClientClick="CloseModalAc();return false;" />
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
                                    <asp:Label runat="server" ID="lId_Lote" Visible="false"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Está seguro de eliminar : 
                                       <strong>
                                           <asp:Label runat="server" ID="lLote" Visible="true"></asp:Label>
                                       </strong>
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    <br />
                                    <asp:Button runat="server" ID="bEliminar" class="btn btn-round btn-success" Text="Eliminar" OnClick="Eliminar_Click" />
                                    <asp:Button runat="server" ID="bCancelar" class="btn btn-round btn-danger" Text="Cancelar" OnClientClick="CloseModalEl();return false;" />
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
                                        <asp:Button ID="Button1" runat="server" class="btn btn-round btn-primary" Text="Nuevo lote" OnClientClick="ShowModalAg();return false;" />
                                    </div>
                                    <div class="ml-auto">
                                        <asp:TextBox ID="txtBuscarLote" runat="server" placeholder="Buscar por lote" CssClass="form-control" MaxLength="200" Style="width: auto;"></asp:TextBox>
                                    </div>
                                    <div class="ml-auto">
                                        <asp:Button ID="btnBuscar" runat="server" Text="Buscar" class="btn btn-round btn-success" OnClick="btnBuscar_Click" />
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:GridView ID="gvLotes" runat="server"
                                    DataKeyNames="Id_Lote"
                                    PageSize="17"
                                    CssClass="mydatagrid"
                                    PagerStyle-CssClass="pager"
                                    HeaderStyle-CssClass="header"
                                    RowStyle-CssClass="rows"
                                    GridLines="both"
                                    AllowPaging="true"
                                    GroupingEnabled="true"
                                    HorizontalAlign="Center"
                                    ShowHeaderWhenEmpty="True"
                                    AutoGenerateColumns="False"
                                    EmptyDataText="Sin registros"
                                    EmptyDataRowStyle-ForeColor="Red"
                                    OnRowCommand="gvLotes_OnRowCommand"
                                    OnPageIndexChanging="gvLotes_PageIndexChanging">
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
                                        <asp:TemplateField HeaderText="Id_Lote" Visible="false">
                                            <ItemTemplate>
                                                <asp:Label ID="gvId_Lote" runat="server" Text='<%#Eval("Id_Lote") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Lote" Visible="true">
                                            <ItemTemplate>
                                                <asp:Label ID="gvLote" runat="server" Text='<%#Eval("Lote") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Modificar">
                                            <ItemTemplate>
                                               <asp:ImageButton ID="btnEditar" runat="server" ImageUrl="~/Pages/Img/Editar.png" CommandName="ShowModalAc" CommandArgument='<%#Eval("Id_Lote") %>' style="display: block; margin: 0 auto;" />

                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Eliminar">
                                            <ItemTemplate>
                                                <asp:ImageButton ID="btnEliminar" runat="server" ImageUrl="~/Pages/Img/Eliminar.png" CommandName="ShowModalEl" CommandArgument='<%#Eval("Id_Lote") %>' style="display: block; margin: 0 auto;"  />
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
