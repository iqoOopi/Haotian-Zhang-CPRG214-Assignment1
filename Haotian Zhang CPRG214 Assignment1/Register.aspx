<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Haotian_Zhang_CPRG214_Assignment1.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
         <table>
                <tr>
                    <td style="width:150px">First Name:</td>
                    <td style="width:250px">
                        <asp:TextBox ID="uxFirstName" runat="server" Height="16px" Width="220px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Last Name:</td>
                    <td>
                        <asp:TextBox ID="uxLastName" runat="server" Width="220px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center" >
                        <asp:Button ID="uxOK" runat="server" Text="OK" Width="77px" OnClick="uxOK_Click" />
                    </td>                    
                </tr>
            </table>
</asp:Content>
