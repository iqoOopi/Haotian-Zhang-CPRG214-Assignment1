<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Haotian_Zhang_CPRG214_Assignment1.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
         <table style="margin:auto">
                <tr>
                    <td style="width:150px">First Name:</td>
                    <td style="width:250px">
                        <asp:TextBox ID="uxFirstName" runat="server" Height="16px" Width="220px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="uxFirstName" ErrorMessage="First Name is Request">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="uxFirstName" Display="None" ErrorMessage="FirstName must less than 30 chars" ValidationExpression="^[a-zA-Z]{1,30}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Last Name:</td>
                    <td>
                        <asp:TextBox ID="uxLastName" runat="server" Height="16px" Width="220px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="uxLastName" ErrorMessage="Last Name is Required">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="uxLastName" Display="None" ErrorMessage="Last name must less than 30" ValidationExpression="^[a-zA-Z]{1,30}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style="height: 25px">Phone:</td>
                    <td style="height: 25px">
                        <asp:TextBox ID="uxPhone" runat="server" Height="16px" Width="220px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="uxPhone" Display="None" ErrorMessage="Must be Numbers Less than 14 digits" ValidationExpression="^[0-9]{1,14}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>City:</td>
                    <td>
                        <asp:TextBox ID="uxCity" runat="server" Height="16px" Width="220px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="uxCity" Display="None" ErrorMessage="City must be less than 30 char" ValidationExpression="^[a-zA-Z]{1,30}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center" >
                        <asp:Button ID="uxOK" runat="server" Text="Regist" Width="77px" OnClick="uxOK_Click" />
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                    </td>                    
                </tr>
            </table>
</asp:Content>
