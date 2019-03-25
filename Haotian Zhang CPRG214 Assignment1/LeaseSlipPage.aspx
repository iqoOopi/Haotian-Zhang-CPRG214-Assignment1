<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LeaseSlipPage.aspx.cs" Inherits="Haotian_Zhang_CPRG214_Assignment1.LeaseSlipPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label2" runat="server" Text="Please select a Dock:"></asp:Label>
    <asp:DropDownList ID="uxDockDropDown" runat="server" DataSourceID="ObjectDataSourceDocks" DataTextField="Name" DataValueField="ID" AutoPostBack="True">
    </asp:DropDownList>
    <asp:ObjectDataSource ID="ObjectDataSourceDocks" runat="server" SelectMethod="AvailDocks" TypeName="CPRG214.Marina.Domain.DockManager"></asp:ObjectDataSource>
    <asp:GridView ID="uxRelatedSlipGrid" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSourceRelatedSlip" AllowPaging="True" OnSelectedIndexChanged="uxRelatedSlipGrid_SelectedIndexChanged" CssClass="table" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" >
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
            <asp:BoundField DataField="DockID" HeaderText="DockID" SortExpression="DockID" />
            <asp:BoundField DataField="Width" HeaderText="Width" SortExpression="Width" />
            <asp:BoundField DataField="Length" HeaderText="Length" SortExpression="Length" />
            <asp:CommandField ButtonType="Button" SelectText="Lease" ShowSelectButton="True" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    <asp:Label ID="Label3" runat="server" Text="Your Order History:"></asp:Label>
    <asp:ObjectDataSource ID="ObjectDataSourceRelatedSlip" runat="server" SelectMethod="relatedSlips" TypeName="CPRG214.Marina.Domain.SlipManager">
        <SelectParameters>
            <asp:ControlParameter ControlID="uxDockDropDown" DefaultValue="1" Name="Id" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:GridView ID="uxGvHistory" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" CssClass="table" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
            <asp:BoundField DataField="SlipID" HeaderText="SlipID" SortExpression="SlipID" />
            <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" SortExpression="CustomerID" />
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
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="LeaseHistory" TypeName="CPRG214.Marina.Domain.LeaseManager">
        <SelectParameters>
            <asp:SessionParameter Name="customerId" SessionField="customer" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>
