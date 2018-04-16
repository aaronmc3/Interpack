<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="CityReport.aspx.cs" Inherits="DatabaseAssignment.CityReport" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div>
    
    </div>
    <table class="style1">
        <tr>
            <td class="style5">
                <asp:Label ID="Label1" runat="server" Text="Province :"></asp:Label>
            </td>
            <td class="style4">
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
           </td>
            <td class="style3" rowspan="3">
                <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" 
                    Width="507px">
                    <series>
                        <asp:Series Name="Series1">
                        </asp:Series>
                    </series>
                    <chartareas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </chartareas>
                </asp:Chart>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
           </td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Label ID="Label2" runat="server" Text="City :"></asp:Label>
            </td>
            <td class="style4">
                <asp:DropDownList ID="DropDownList2" runat="server">
                </asp:DropDownList>
           </td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Label ID="Label3" runat="server" Text="Details :"></asp:Label>
            </td>
            <td class="style4">
                <asp:DropDownList ID="DropDownList3" runat="server">
                </asp:DropDownList>
           </td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Button ID="Button1" runat="server" Text="Generate Report" 
                    onclick="Button1_Click" />
            </td>
            <td class="style4">
                <asp:Button ID="Button2" runat="server" Text="Print Report" 
                    onclick="Button2_Click" />     
            </td>
            <td class="style3">
                <asp:Button ID="Button3" runat="server" Text="Cancel" onclick="Button3_Click" />                
            </td>

            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>