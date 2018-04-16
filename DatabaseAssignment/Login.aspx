<% @ Page Language="C#" MasterPageFile="~/Site.master" Title="Login" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DatabaseAssignment.login" %>

<%@ Register Assembly="BotDetect" Namespace="BotDetect.Web.UI" 
  TagPrefix="BotDetect" %>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div>
    <table>
        <tr>
            <td>
                <asp:Label ID="lblUser" runat="server" Text="User name :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtUser" runat="server" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblPassword" runat="server" Text="Password :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
             <asp:Label ID="CaptchaLabel" runat="server" AssociatedControlID="CaptchaCode">
             Retype the characters from the picture:
             </asp:Label>
             <!-- <BotDetect:Captcha ID="Captcha1" runat="server" /> -->
             <asp:TextBox ID="CaptchaCode" runat="server" />
             <asp:Label ID="CaptchaErrorLabel" runat="server"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID = "lblError" runat ="server" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID ="btnLogin" runat ="server" onclick="btnLogin_Click" Text="Log in"></asp:Button>
            </td>
            <td>
                <asp:Button ID ="btnExit" runat ="server" onclick="btnExit_Click" Text="Exit"></asp:Button>
            </td>
        </tr>
        </table>
    </div>
</asp:Content>

