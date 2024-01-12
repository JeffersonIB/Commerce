<%@ Page Title="" Language="C#" MasterPageFile="~/MP1.Master" AutoEventWireup="true" CodeBehind="Registros.aspx.cs" Inherits="IT_Finca.Pages.Admin.Registros" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title1" runat="server">
    Registros actividades
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body1" runat="server">

    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Administración de registros de actividades
        </title>
        <link href="<%= ResolveClientUrl("~/CSS/Admin.css") %>" rel="stylesheet" />
        <script src="<%= ResolveClientUrl("~/JS/Admin.js") %>"> </script>
    </head>
    <body>
        <div class="container box">
            <center>
                <h1 class="title">Administración de registros de actividades
                </h1>
            </center>
        </div>
        <!-- Modal Actualizar -->
        <div class="modal fade" id="Modal_Actualizar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Modificar datos
                        </h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <table align="center">
                            <tr>
                                <td>
                                    Id Registro
                                </td>
                                <td>
                                    <strong> <asp:Label runat="server" ID="lbId_Registro" Visible="true"></asp:Label></strong>
                                </td>
                            </tr>
                            <tr>
                                <td>Empresa :
                                </td>
                                <td colspan="2">
                                    <div class="control">
                                        <div class="select">
                                            <asp:DropDownList ID="ddEmpresas" runat="server" AutoPosBack="true" OnSelectedIndexChanged="ddEmpresas_SelectedIndexChanged" CssClass="form-control" Style="width: 100%;">
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>Finca :
                                </td>
                                <td colspan="2">
                                    <div class="control">
                                        <div class="select">
                                            <asp:DropDownList ID="ddFincas" runat="server" AutoPosBack="true" OnSelectedIndexChanged="ddFincas_SelectedIndexChanged" CssClass="form-control" Style="width: 100%;">
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>Lote :
                                </td>
                                <td colspan="2">
                                    <div class="control">
                                        <div class="select">
                                            <asp:DropDownList ID="ddLotes" runat="server" AutoPosBack="true" OnSelectedIndexChanged="ddLotes_SelectedIndexChanged"  CssClass="form-control" Style="width: 100%;">
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>Proceso :
                                </td>
                                <td colspan="2">
                                    <div class="control">
                                        <div class="select">
                                            <asp:DropDownList ID="ddProcesos" runat="server" AutoPosBack="true" OnSelectedIndexChanged="ddProcesos_SelectedIndexChanged" CssClass="form-control" Style="width: 100%;">
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>Proveedor :
                                </td>
                                <td colspan="2">
                                    <div class="control">
                                        <div class="select">
                                            <asp:DropDownList ID="ddProveedores" runat="server" AutoPosBack="true" CssClass="form-control" Style="width: 100%;">
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>Actividad 1 :
                                </td>
                                <td colspan="2">
                                    <div class="control">
                                        <div class="select">
                                            <asp:DropDownList ID="ddActividad1" runat="server" AutoPosBack="true" CssClass="form-control" Style="width: 100%;">
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>Actividad 2 :
                                </td>
                                <td colspan="2">
                                    <div class="control">
                                        <div class="select">
                                            <asp:DropDownList ID="ddActividad2" runat="server" AutoPosBack="true" CssClass="form-control" Style="width: 100%;">
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>Actividad 3 :
                                </td>
                                <td colspan="2">
                                    <div class="control">
                                        <div class="select">
                                            <asp:DropDownList ID="ddActividad3" runat="server" AutoPosBack="true" CssClass="form-control" Style="width: 100%;">
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>Tipo pago :
                                </td>
                                <td colspan="2">
                                    <div class="control">
                                        <div class="select">
                                            <asp:DropDownList ID="ddTipo_Actividad1" runat="server" AutoPosBack="true" CssClass="form-control" Style="width: 100%;">
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td align="center">Cantidad 1
                                    <asp:TextBox ID="txCantidad1" runat="server" type="number"  Text="0" min="0" step="0.01" CssClass="form-control" Style="width: 80%;"></asp:TextBox>
                                </td>
                                <td align="center">Cantidad 2
                                    <asp:TextBox ID="txCantidad2" runat="server" type="number" Text="0" min="0" step="0.01" CssClass="form-control" Style="width: 80%;"></asp:TextBox>
                                </td>
                                <td align="center">Cantidad 3
                                    <asp:TextBox ID="txCantidad3" runat="server" type="number"   Text="0" min="0" step="0.01" CssClass="form-control" Style="width: 80%;"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" align="center">
                                    <br />
                                    <asp:Button runat="server" ID="btActualizar" class="btn btn-round btn-success" Text="Guardar" OnClick="Actualizar_Click" />
                                    <asp:Button runat="server" ID="btCancelar" class="btn btn-round btn-danger" Text="Cancelar" OnClientClick="CloseModalAc();return false;" />
                                </td>
                            </tr>
                        </table>
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
                                    <asp:Label runat="server" ID="lId_Registro" Visible="false"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Está seguro de eliminar el registro con Id : 
                                       <strong>
                                           <asp:Label runat="server" ID="lFinca" Visible="true"></asp:Label></strong>
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
                                <asp:TextBox ID="txtBuscarRegistro" runat="server" placeholder="Buscar por Id" CssClass="form-control" MaxLength="200" Style="width: auto;"></asp:TextBox>
                            </div>
                            <div class="ml-auto">
                                <asp:Button ID="btnBuscar" runat="server" Text="Buscar" class="btn btn-round btn-success" OnClick="btnBuscar_Click" />
                            </div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="gvRegistros" runat="server"
                            DataKeyNames="Id_Registro"
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
                            EmptyDataText="No Records Found"
                            EmptyDataRowStyle-ForeColor="Red"
                            OnRowCommand="gvRegistros_OnRowCommand"
                            OnPageIndexChanging="gvRegistros_PageIndexChanging">
                            <Columns>
                                <asp:TemplateField HeaderText="Id" Visible="true">
                                    <ItemTemplate>
                                        <asp:Label ID="gvId_Registro" runat="server" Text='<%#Eval("Id_Registro") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Id_Empresa" Visible="false">
                                    <ItemTemplate>
                                        <asp:Label ID="gvId_Empresa" runat="server" Text='<%#Eval("Id_Empresa") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Empresa" Visible="false">
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
                                <asp:TemplateField HeaderText="Id_Proceso" Visible="false">
                                    <ItemTemplate>
                                        <asp:Label ID="gvId_Proceso" runat="server" Text='<%#Eval("Id_Proceso") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Proceso" Visible="true">
                                    <ItemTemplate>
                                        <asp:Label ID="gvProceso" runat="server" Text='<%#Eval("Proceso") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Id_Proveedor" Visible="false">
                                    <ItemTemplate>
                                        <asp:Label ID="gvId_Proveedor" runat="server" Text='<%#Eval("Id_Proveedor") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Codigo_Proveedor" Visible="false">
                                    <ItemTemplate>
                                        <asp:Label ID="gvCodigo_Proveedor" runat="server" Text='<%#Eval("Codigo_Proveedor") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Nombre" Visible="true">
                                    <ItemTemplate>
                                        <asp:Label ID="gvNombre" runat="server" Text='<%#Eval("Nombre") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="DPI" Visible="false">
                                    <ItemTemplate>
                                        <asp:Label ID="gvDPI" runat="server" Text='<%#Eval("DPI") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Id_Actividad1" Visible="false">
                                    <ItemTemplate>
                                        <asp:Label ID="gvId_Actividad1" runat="server" Text='<%#Eval("Id_Actividad1") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Actividad1" Visible="true">
                                    <ItemTemplate>
                                        <asp:Label ID="gvActividad1" runat="server" Text='<%#Eval("Actividad1") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Id_Tipo_Actividad1" Visible="false">
                                    <ItemTemplate>
                                        <asp:Label ID="gvId_Tipo_Actividad1" runat="server" Text='<%#Eval("Id_Tipo_Actividad1") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Tipo_Pago1" Visible="true">
                                    <ItemTemplate>
                                        <asp:Label ID="gvTipo_Actividad1" runat="server" Text='<%#Eval("Tipo_de_Pago1") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Cantidad1" Visible="true">
                                    <ItemTemplate>
                                        <asp:Label ID="gvCantidad1" runat="server" Text='<%#Eval("Cantidad1") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Id_Actividad2" Visible="false">
                                    <ItemTemplate>
                                        <asp:Label ID="gvId_Actividad2" runat="server" Text='<%#Eval("Id_Actividad2") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Actividad2" Visible="false">
                                    <ItemTemplate>
                                        <asp:Label ID="gvActividad2" runat="server" Text='<%#Eval("Actividad2") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Id_Tipo_Actividad2" Visible="false">
                                    <ItemTemplate>
                                        <asp:Label ID="gvId_Tipo_Actividad2" runat="server" Text='<%#Eval("Tipo_de_Pago2") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Tipo_Pago2" Visible="false">
                                    <ItemTemplate>
                                        <asp:Label ID="gvTipo_Actividad2" runat="server" Text='<%#Eval("Tipo_de_Pago2") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Cantidad2" Visible="false">
                                    <ItemTemplate>
                                        <asp:Label ID="gvCantidad2" runat="server" Text='<%#Eval("Cantidad2") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Id_Actividad3" Visible="false">
                                    <ItemTemplate>
                                        <asp:Label ID="gvId_Actividad3" runat="server" Text='<%#Eval("Id_Actividad3") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Actividad3" Visible="false">
                                    <ItemTemplate>
                                        <asp:Label ID="gvActividad3" runat="server" Text='<%#Eval("Actividad3") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Id_Tipo_Actividad3" Visible="false">
                                    <ItemTemplate>
                                        <asp:Label ID="gvId_Tipo_Actividad3" runat="server" Text='<%#Eval("Id_Tipo_Actividad3") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Tipo_Pago3" Visible="false">
                                    <ItemTemplate>
                                        <asp:Label ID="gvTipo_Actividad3" runat="server" Text='<%#Eval("Tipo_de_Pago3") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Cantidad3" Visible="false">
                                    <ItemTemplate>
                                        <asp:Label ID="gvCantidad3" runat="server" Text='<%#Eval("Cantidad3") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Modificar">
                                    <ItemTemplate>
                                        <asp:ImageButton ID="btnEditar" runat="server" ImageUrl="~/Pages/Img/Editar.png" CommandName='ShowModalAc' CommandArgument='<%#Eval("Id_Registro") %>' style="display: block; margin: 0 auto;" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Eliminar">
                                    <ItemTemplate>
                                        <asp:ImageButton ID="btnEliminar" runat="server" ImageUrl="~/Pages/Img/Eliminar.png" CommandName='ShowModalEl' CommandArgument='<%#Eval("Id_Registro") %>' style="display: block; margin: 0 auto;" />
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
