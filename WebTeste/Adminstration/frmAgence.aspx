<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmAgence.aspx.cs" Inherits="WebTeste.Adminstration.frmAgence" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server" style="margin-left='2%';">
    <table style="width:100%;">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:GridView ID="gvAgence" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%" OnSelectedIndexChanged="gvAgence_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
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
            </td>
        </tr>
        <tr>
            <td style="height: 23px"></td>
            <td style="height: 23px"></td>
            <td style="height: 23px" colspan="2"></td>
        </tr>
        <tr>
            <td style="height: 23px">&nbsp;</td>
            <td style="height: 23px">&nbsp;</td>
            <td style="height: 23px" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 57px">Libelle</td>
            <td style="height: 57px">
                &nbsp;</td>
            <td style="height: 57px" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 23px">
                <asp:TextBox ID="txtLibelle" runat="server" CssClass="form-control"></asp:TextBox>
            </td>
            <td style="height: 23px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtLibelle" ErrorMessage="Libbele requies" CssClass="alert alert-danger"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 23px" colspan="2">
            </td>
        </tr>
        <tr>
            <td style="height: 23px">
                <asp:Label ID="Label1" runat="server" Text="Quartier"></asp:Label>
            </td>
            <td style="height: 23px"></td>
            <td style="height: 23px" colspan="2"></td>
        </tr>
        <tr>
            <td style="height: 23px">
                <asp:TextBox ID="txtQuartier" runat="server" CssClass="form-control"></asp:TextBox>
                </td>
            <td style="height: 23px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtQuartier" runat="server" ErrorMessage="Quartier requies" CssClass="alert alert-danger"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 23px" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 23px">
                <asp:Label ID="Label2" runat="server" Text="Ville"></asp:Label>
            </td>
            <td style="height: 23px">&nbsp;</td>
            <td style="height: 23px" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 23px">
                <asp:TextBox ID="txtVille" runat="server" CssClass="form-control"></asp:TextBox>
                </td>
            <td style="height: 23px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtVille" runat="server" ErrorMessage="Ville requies" CssClass="alert alert-danger"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 23px" colspan="2"></td>
        </tr>
        <tr>
            <td style="height: 23px">&nbsp;</td>
            <td style="height: 23px">&nbsp;</td>
            <td style="height: 23px" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 23px">&nbsp;</td>
            <td style="height: 23px">&nbsp;</td>
            <td style="height: 23px" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 23px">
                <asp:Button ID="btnAjouter" runat="server" Text="Ajouter" OnClick="btnAjouter_Click" CssClass="btn btn-success" />
            </td>
            <td style="height: 23px">
                <asp:Button ID="btnModifier" runat="server" Text="Modifier" OnClick="btnModifier_Click" CssClass="btn btn-warring" />
            </td>
            <td style="height: 23px">
                <asp:Button ID="btnSupprimer" runat="server" Text="Supprimer" OnClick="btnSupprimer_Click" CssClass="btn btn-danger" />
            </td>
            <td style="height: 23px">
                <asp:Button ID="btnImprimmer" runat="server" OnClientClick="if(!confirm('Vous etes entrain d\'imprimmer la liste des Agences \n Etes Vous sur?')) return false" Text="Imprimmer" CausesValidation="False" OnClick="btnImprimmer_Click" />
            </td>
        </tr>
        <tr>
            <td style="height: 23px">&nbsp;</td>
            <td style="height: 23px">&nbsp;</td>
            <td style="height: 23px" colspan="2">&nbsp;</td>
        </tr>
    </table>
</form>
</asp:Content>
