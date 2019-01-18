<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmTypePiece.aspx.cs" Inherits="WebTeste.Administration.frmTypePiece" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   <table style="width:100%;">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:GridView ID="gvType" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Width="100%" OnSelectedIndexChanged="gvType_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <SortedAscendingCellStyle BackColor="#F4F4FD" />
                    <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                    <SortedDescendingCellStyle BackColor="#D8D8F0" />
                    <SortedDescendingHeaderStyle BackColor="#3E3277" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Label ID="Label1" runat="server" Text="Libellé"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:TextBox ID="txtLib" runat="server" Width="295px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnAdd" runat="server" Text="Ajouter" BackColor="Lime" OnClick="btnAdd_Click" />
            <td>
                <asp:Button ID="btnUpdate" runat="server" Text="Modifier" BackColor="yellow" OnClick="btnUpdate_Click" />
            </td>
            <td>
                <asp:Button ID="btnDelete" runat="server" Text="Supprimer" BackColor="red" OnClick="btnDelet_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
