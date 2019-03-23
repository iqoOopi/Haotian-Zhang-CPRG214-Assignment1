<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SlipPage.aspx.cs" Inherits="Haotian_Zhang_CPRG214_Assignment1.SlipPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Available Slips:</h1>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" CssClass="table">
    <Columns>
        <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
        <asp:BoundField DataField="Width" HeaderText="Width" SortExpression="Width" />
        <asp:BoundField DataField="Length" HeaderText="Length" SortExpression="Length" />
        <asp:BoundField DataField="DockID" HeaderText="DockID" SortExpression="DockID" />
    </Columns>
</asp:GridView>
<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="AvailSlips" TypeName="CPRG214.Marina.Domain.SlipManager"></asp:ObjectDataSource>

</asp:Content>
