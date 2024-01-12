<%@ Page Title="" Language="C#" MasterPageFile="~/MP1.Master" AutoEventWireup="true" CodeBehind="Formulario_Secado2.aspx.cs" Inherits="IT_Finca.Pages.Test.Formulario_Secado2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title1" runat="server">
    Formuario Secado
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
                <h1 class="title">Secado
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
                            <td align="center">
                                <asp:DropDownList ID="ddlCafe" runat="server" AutoPostBack="true" CssClass="form-control" Style="width: 100%;">
                                </asp:DropDownList>
                            </td>
                            <td align="center">
                                <asp:Button ID="BTNBuscar" runat="server" Text="Buscar" class="btn btn-round btn-success" OnClick="BTNBuscar_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:GridView ID="GVSecado" runat="server"
                                    DataKeyNames="Id_Beneficio_R"
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
                                    HeaderStyle-CssClass="header">
                                    <Columns>
                                        <asp:TemplateField HeaderText="Id_Beneficio_R" Visible="false">
                                            <ItemTemplate>
                                                <asp:Label ID="lbl_Id_Beneficio_R" runat="server" Text='<%#Eval("Id_Beneficio_R") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Fecha beneficio" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Label ID="lbl_Fecha_Crea" runat="server" Text='<%# Eval("Fecha_Crea", "{0:dd/MM/yyyy}") %>'></asp:Label>
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
                                                    <asp:Label ID="lbl_Verde" runat="server" align="center" Text='<%# String.Format("{0:N}", Eval("Verde") )%>'></asp:Label>
                                                </div>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Maduro">
                                            <ItemTemplate>
                                                <div align="center">
                                                    <asp:Label ID="lbl_Maduro" runat="server" align="center" Text='<%# String.Format("{0:N}", Eval("Maduro") )%>'></asp:Label>
                                                </div>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Check" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <input id="chkRow" runat="server" type="checkbox" class="flat">
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <br />
                                <bh></bh>
                            </td>
                        </tr>
                        <tr>
                            <div id="Tipo_Secado" runat="server" visible="false">
                                <td align="center"><strong>Tipo secado</strong>
                                    <asp:DropDownList ID="ddlTipo_Secado" runat="server" AutoPostBack="true" CssClass="form-control" Style="width: 100%;"></asp:DropDownList>
                                </td>
                                <td align="center"><strong>No partida</strong>
                                    <asp:DropDownList ID="ddlPartida" runat="server" AutoPostBack="true" CssClass="form-control" Style="width: 100%;"></asp:DropDownList>
                                </td>
                            </div>
                        </tr>
                        <tr>
                            <td align="center">
                                <asp:RequiredFieldValidator
                                    ID="RequiredFieldValidator1" runat="server"
                                    ControlToValidate="ddlTipo_Secado"
                                    ErrorMessage="Campo obligatorio"
                                    ForeColor="Red"
                                    ValidationGroup="Validate"
                                    InitialValue="0">
                                </asp:RequiredFieldValidator>
                            </td>
                            <td align="center">
                                <asp:RequiredFieldValidator
                                    ID="RequiredFieldValidator2" runat="server"
                                    ControlToValidate="ddlPartida"
                                    ErrorMessage="Campo obligatorio"
                                    ForeColor="Red"
                                    ValidationGroup="Validate"
                                    InitialValue="0">
                                </asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <div id="Agregar" runat="server" visible="false">
                                <td colspan="2" align="center">
                                    <asp:Button ID="BTNAgregar" runat="server" ValidationGroup="Validate" Text="Agregar selección" class="btn btn-round btn-info" OnClick="BTNAgregar_Click" />
                                </td>
                            </div>
                        </tr>
                    </table>
                    <br />
                    <table>
                        <tr>
                            <td>
                                <asp:GridView ID="GVSecado2" runat="server"
                                    AutoGenerateColumns="False">
                                    <Columns>
                                        <asp:TemplateField HeaderText="Id_Beneficio_R" Visible="false">
                                            <ItemTemplate>
                                                <asp:Label ID="lbl_Id_Beneficio_R" runat="server" Text='<%#Eval("Id_Beneficio_R") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Fecha beneficio" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Label ID="lbl_Fecha_Crea" runat="server" Text='<%# Eval("Fecha_Crea", "{0:dd/MM/yyyy}") %>'></asp:Label>
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
                                        <asp:TemplateField HeaderText="Libras">
                                            <ItemTemplate>
                                                <div align="center">
                                                    <asp:Label ID="lbl_Libras" runat="server" align="center" Text='<%# String.Format("{0:N}", Eval("Libras") )%>'></asp:Label>
                                                </div>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:UpdatePanel>
            <div id="Confirmar" runat="server">
                <asp:Button ID="BTNInsertar" runat="server" Text="Insertar" class="btn btn-primary" OnClick="BTNInsertar_Click" />
            </div>
        </center>
    </body>
    </html>
</asp:Content>
