<%@ Page Title="" Language="C#" MasterPageFile="~/MP1.Master" AutoEventWireup="true" CodeBehind="DDL_GW.aspx.cs" Inherits="IT_Finca.Pages.Test.DDL_GW" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body1" runat="server">
    <asp:DropDownList ID="ddlCafe" runat="server" AutoPostBack="true" CssClass="form-control" Style="width: 100%" OnSelectedIndexChanged="OnSelectedIndexChanged">
    </asp:DropDownList>
    <hr />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" ItemStyle-Width="30" />
            <asp:BoundField DataField="Name" HeaderText="Name" ItemStyle-Width="150" />
            <asp:TemplateField HeaderText="Country1" ItemStyle-Width="150">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("Country1") %>' runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Country2" ItemStyle-Width="150">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("Country2") %>' runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>
