<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SlipPage.aspx.cs" Inherits="Haotian_Zhang_CPRG214_Assignment1.SlipPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Available Slips:</h1>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" CssClass="table" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
        <asp:BoundField DataField="Width" HeaderText="Width" SortExpression="Width" />
        <asp:BoundField DataField="Length" HeaderText="Length" SortExpression="Length" />
        <asp:BoundField DataField="DockID" HeaderText="DockID" SortExpression="DockID" />
    </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
</asp:GridView>
<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="AvailSlips" TypeName="CPRG214.Marina.Domain.SlipManager"></asp:ObjectDataSource>

</asp:Content>
