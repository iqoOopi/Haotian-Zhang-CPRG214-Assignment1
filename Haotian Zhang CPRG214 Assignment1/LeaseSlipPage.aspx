<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LeaseSlipPage.aspx.cs" Inherits="Haotian_Zhang_CPRG214_Assignment1.LeaseSlipPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DropDownList ID="uxDockDropDown" runat="server" DataSourceID="ObjectDataSourceDocks" DataTextField="Name" DataValueField="ID" AutoPostBack="True">
    </asp:DropDownList>
    <asp:ObjectDataSource ID="ObjectDataSourceDocks" runat="server" SelectMethod="AvailDocks" TypeName="CPRG214.Marina.Domain.DockManager"></asp:ObjectDataSource>
    <asp:GridView ID="uxRelatedSlipGrid" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSourceRelatedSlip" OnSelectedIndexChanging="uxRelatedSlipGrid_SelectedIndexChanged" AllowPaging="True" >
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
            <asp:BoundField DataField="DockID" HeaderText="DockID" SortExpression="DockID" />
            <asp:BoundField DataField="Width" HeaderText="Width" SortExpression="Width" />
            <asp:BoundField DataField="Length" HeaderText="Length" SortExpression="Length" />
            <asp:CommandField ButtonType="Button" SelectText="Lease" ShowSelectButton="True" />
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSourceRelatedSlip" runat="server" SelectMethod="relatedSlips" TypeName="CPRG214.Marina.Domain.SlipManager">
        <SelectParameters>
            <asp:ControlParameter ControlID="uxDockDropDown" DefaultValue="1" Name="Id" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:GridView ID="uxGvHistory" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
            <asp:BoundField DataField="SlipID" HeaderText="SlipID" SortExpression="SlipID" />
            <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" SortExpression="CustomerID" />
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="LeaseHistory" TypeName="CPRG214.Marina.Domain.LeaseManager">
        <SelectParameters>
            <asp:SessionParameter Name="customerId" SessionField="customer" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>
