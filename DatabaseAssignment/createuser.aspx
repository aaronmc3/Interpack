<%@ Page Language="C#" Masterpagefile="~/Site.Master" AutoEventWireup="true" CodeBehind="createuser.aspx.cs" Inherits="group8.createuser" %>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
   
    <div>
    
    </div>
        <table">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="User ID:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Name:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Job Role:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Province:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" Height="24px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Width="150px">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="City:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" Height="24px" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" Width="150px">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Store:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList4" runat="server">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button2" runat="server"/>
                </td>
                <td class="auto-style4">
                    <asp:Button ID="Button3" runat="server"/>
                </td>
                <td>
                    <asp:Button ID="Button4" runat="server"/>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="Failed. The user ID exists."></asp:Label>
                    <asp:Label ID="Label10" runat="server" Text="Successful!"></asp:Label>
                    <asp:Label ID="Label8" runat="server" Text="Incomplete information"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
</asp:Content>