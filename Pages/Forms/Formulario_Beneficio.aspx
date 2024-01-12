<%@ Page Title="" Language="C#" MasterPageFile="~/MP1.Master" AutoEventWireup="true" CodeBehind="Formulario_Beneficio.aspx.cs" Inherits="IT_Finca.Pages.Forms.Formulario_Beneficio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title1" runat="server">
    Beneficio
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
        <script>
            $(function () {
                $("#Calendario").datepicker({
                    dateFormat: 'dd-mm-yy',
                    showButtonPanel: true,
                    changeMonth: true,
                    changeYear: true
                });
            });
        </script>
    </head>
    <body>
        <div class="container box">
            <center>
                <h1 class="title">Beneficio
                </h1>
            </center>
        </div>
        <br />
        <!-- Tabla de Fincas -->
        <center>
            <table>
                <tr>
                    <td>
                        <div class="row">
                            <div class="item form-group">
                                <label class="col-form-label col-md-3 col-sm-3 label-align">
                                    <h5>Fecha
                                    </h5>
                                </label>
                            </div>
                            <div class="item form-group">
                                <input id="Calendario" runat="server" class="date-picker form-control" placeholder="dd-mm-yyyy" type="text" onfocus="this.type='date'" onmouseover="this.type='date'" onclick="this.type='date'" onblur="this.type='text'" onmouseout="timeFunctionLong(this)">
                                <script>
                                    function timeFunctionLong(input) {
                                        setTimeout(function () {
                                            input.type = 'text';
                                        }, 60000);
                                    }
                                </script>
                            </div>
                            <div class="ml-auto">
                                <asp:Button ID="btnBuscar" runat="server" Text="Buscar" class="btn btn-round btn-success" OnClick="btnBuscar_Click" />
                            </div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="gvBeneficio" runat="server"
                            DataKeyNames="Id_Beneficio"
                            PageSize="17"
                            CssClass="mydatagrid"
                            GridLines="both"
                            GroupingEnabled="true"
                            AllowPaging="true"
                            HorizontalAlign="Center"
                            ShowHeaderWhenEmpty="True"
                            AutoGenerateColumns="False"
                            EmptyDataText="Sin registros"
                            EmptyDataRowStyle-ForeColor="Red"
                            RowStyle-CssClass="rows"
                            PagerStyle-CssClass="pager"
                            HeaderStyle-CssClass="header"
                            OnPageIndexChanging="gvBeneficio_OnPageIndexChanging"
                            OnRowCancelingEdit="gvBeneficio_RowCancelingEdit"
                            OnRowEditing="gvBeneficio_RowEditing"
                            OnRowUpdating="gvBeneficio_RowUpdating">
                            <Columns>
                                <asp:TemplateField HeaderText="Id_Beneficio" Visible="false">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_Id_Beneficio" runat="server" Text='<%#Eval("Id_Beneficio") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Id_Finca" Visible="false">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_Id_Finca" runat="server" Text='<%#Eval("Id_Finca") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Finca">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_Finca" runat="server" Text='<%#Eval("Finca") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Id_Lote" Visible="false">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_Id_Lote" runat="server" Text='<%#Eval("Id_Lote") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Lote">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_Lote" runat="server" Text='<%#Eval("Lote") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Verde">
                                    <ItemTemplate>
                                        <div align="center">
                                            <asp:Label ID="lbl_Verde" runat="server" align="center" Text='<%#Eval("Verde") %>'></asp:Label>
                                        </div>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <div align="center">
                                            <asp:TextBox ID="txt_Verde" runat="server" type="number" CssClass="form-control" min="0" step="0.01" placeholder="0.00" Text='<%#Eval("Verde") %>' Style="width: 100%;" align="center"></asp:TextBox>
                                        </div>
                                    </EditItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Maduro">
                                    <ItemTemplate>
                                        <div align="center">
                                            <asp:Label ID="lbl_Maduro" runat="server" align="center" Text='<%#Eval("Maduro") %>'></asp:Label>
                                        </div>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <div align="center">
                                            <asp:TextBox ID="txt_Maduro" runat="server" type="number" CssClass="form-control" min="0" step="0.01" placeholder="0.00" Text='<%#Eval("Maduro") %>' Style="width: 100%;" align="center"></asp:TextBox>
                                        </div>
                                    </EditItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Fecha cosecha" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_Fecha_Crea" runat="server" Text='<%# Eval("Fecha_Crea", "{0:dd/MM/yyyy}") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Editar">
                                    <ItemTemplate>
                                        <asp:ImageButton ID="btn_Edit" runat="server" ImageUrl="~/Pages/Img/Editar.png" CommandName="Edit" CommandArgument='<%#Eval("Id_Beneficio") %>' Style="display: block; margin: 0 auto;" />
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:ImageButton ID="btn_Update" runat="server" ImageUrl="~/Pages/Img/Calificado.gif" CommandName="Update" CommandArgument='<%#Eval("Id_Beneficio") %>' Style="display: block; margin: 0 auto;" />
                                        <asp:ImageButton ID="btn_Cancel" runat="server" ImageUrl="~/Pages/Img/Cancelado.gif" CommandName="Cancel" CommandArgument='<%#Eval("Id_Beneficio") %>' Style="display: block; margin: 0 auto;" />
                                    </EditItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Confirmar">
                                    <ItemTemplate>
                                        <asp:ImageButton ID="btn_Confir" runat="server" ImageUrl="~/Pages/Img/Calificado.gif" OnClick="btn_Confir_Click" CommandArgument='<%#Eval("Id_Beneficio") %>' Style="display: block; margin: 0 auto;" />
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
