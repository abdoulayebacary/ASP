<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="typePiece.aspx.cs" Inherits="WebTeste.Adminstration.typePiece" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <table style="width:100%;">
            <tr>
                <td style="height: 23px"></td>
                <td style="height: 23px"></td>
                <td style="height: 23px"></td>
            </tr>
            <tr>
                <td colspan="3">
                     <div class="box-body table-responsive no-padding">
                    <asp:GridView ID="gvPiece" runat="server" Width="639px" OnSelectedIndexChanged="gvPiece_SelectedIndexChanged">
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
            </tr>
            <tr>
                <td style="height: 23px">Libelle Piece</td>
                <td style="height: 23px">&nbsp;</td>
                <td style="height: 23px"></td>
            </tr>
            <tr>
                <td style="height: 23px">
                    <asp:TextBox CssClass="form-control" ID="txtlibelle" runat="server"></asp:TextBox>
                </td>
                <td style="height: 23px"></td>
                <td style="height: 23px"></td>
            </tr>
            <tr>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtlibelle" runat="server" ErrorMessage="RequiredFieldValidator" CssClass="alert alert-danger"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="margin-left: 80px">
                    <asp:Button ID="btnValider" CssClass="btn btn-success" runat="server" Text="Ajouter" OnClick="btnValider_Click" />
                </td>
                <td>
                    <asp:Button ID="btnModifer" CssClass="btn btn-primary" runat="server" Text="Modifer" OnClick="btnModifer_Click" />
                </td>
                <td>
                    <asp:Button ID="BtnSupprimer" runat="server" CssClass="btn btn-danger" Text="Supprimer" OnClick="BtnSupprimer_Click" />
                </td>
            </tr>
        </table>
    </form>
</asp:Content>
