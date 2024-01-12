<%@ Page Title="" Language="C#" MasterPageFile="~/MP1.Master" AutoEventWireup="true" CodeBehind="Select_GridView2.aspx.cs" Inherits="IT_Finca.Pages.Test.Select_GridView2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body1" runat="server">

    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title></title>
        <style type="text/css">
            body {
                font-family: Arial;
                font-size: 10pt;
            }
        </style>
    </head>
    <body>
        <asp:GridView ID="gvBeneficio" runat="server"
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
                <asp:TemplateField>
                    <ItemTemplate>
                        <input id="chkRow" runat="server" type="checkbox" class="flat">
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Finca">
                    <ItemTemplate>
                        <asp:Label ID="lbl_Finca" runat="server" Text='<%#Eval("Finca") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Maduro">
                    <ItemTemplate>
                        <div align="center">
                            <asp:Label ID="lbl_Maduro" runat="server" align="center" Text='<%# String.Format("{0:N}", Eval("Maduro") )%>'></asp:Label>
                        </div>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <br />
        <asp:Button ID="btnGetSelected" runat="server" Text="Get selected records" OnClick="GetSelectedRecords" />
        <hr />
        <u>Selected Rows</u>
        <br />
        <asp:GridView ID="gvSelected" runat="server" 
            HeaderStyle-BackColor="#3AC0F2" 
            HeaderStyle-ForeColor="White" 
            AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField DataField="Finca" HeaderText="Finca" ItemStyle-Width="150" />
                <asp:BoundField DataField="Maduro" HeaderText="Maduro" ItemStyle-Width="150" />
            </Columns>
        </asp:GridView>
    </body>
    </html>
</asp:Content>
