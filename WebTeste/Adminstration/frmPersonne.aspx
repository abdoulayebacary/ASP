<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmPersonne.aspx.cs" Inherits="WebTeste.Adminstration.frmPersonne" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
    <table style="width:100%;">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="auto">
                 <div class="box-body table-responsive no-padding">
                <asp:GridView ID="gvPersonne" runat="server" Width="653px" OnSelectedIndexChanged="gvPersonne_SelectedIndexChanged">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                    </Columns>
                </asp:GridView>
                     </div>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Nom</td>
            <td>Prenom</td>
            <td>Telephone</td>
            <td>Email</td>
            <td>Adresse</td>
            <td>NumPiece</td>
            <td>IdPiece</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox CssClass="form-control" ID="txtNom" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox CssClass="form-control" ID="txtPrenom" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox CssClass="form-control" ID="txtTelephone" runat="server"></asp:TextBox>
            </td>
            <td style="margin-left: 120px">
                <asp:TextBox CssClass="form-control" ID="txtEmail" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox CssClass="form-control" ID="txtAdresse" runat="server"></asp:TextBox>
            </td>
            <td style="margin-left: 80px">
                <asp:TextBox CssClass="form-control" ID="txtNumpice" runat="server"></asp:TextBox>
            </td>
            <td style="margin-left: 80px">
                <asp:DropDownList ID="lsPieces" CssClass="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="libelleTypePiece" DataValueField="id">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="height: 37px"></td>
            <td style="height: 37px"></td>
            <td style="height: 37px"></td>
            <td style="height: 37px"></td>
            <td style="height: 37px"></td>
            <td style="height: 37px"></td>
            <td style="height: 37px">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Conn %>" SelectCommand="SELECT * FROM [TypePieces]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnAjouter" runat="server" CssClass="btn btn-success" OnClick="btnAjouter_Click" Text="Ajouter" />
            </td>
            <td>
                <asp:Button ID="btnModifier" runat="server" CssClass="btn btn-primary" OnClick="Button2_Click" Text="modifier" />
            </td>
            <td>
                <asp:Button ID="btnSupprimer" runat="server" CssClass="btn btn-danger" OnClick="btnSupprimer_Click" Text="supprimer" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </form>
</asp:Content>
