<%@ Page Language="C#" Masterpagefile="~/Site.Master" AutoEventWireup="true" CodeBehind="store_management.aspx.cs" Inherits="group8.store_management" %>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

        <table>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Please input the new store information"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Province:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="City:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Street:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Postcode:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Unit Name:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Submit" />
        <p>
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Cancel" />
        </p>
        <p>
            <asp:Button ID="Button5" runat="server" Text="Exit" />
        </p>
        <asp:Label ID="Label7" runat="server"></asp:Label>
        <p>
            <asp:Label ID="Label8" runat="server" ForeColor="Red" Text="Incomplete information"></asp:Label>
        </p>

</asp:Content>