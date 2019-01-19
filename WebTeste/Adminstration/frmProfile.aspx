<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmProfile.aspx.cs" Inherits="WebTeste.Adminstration.frmProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <table style="width:100%;">
            <tr>
                <td>&nbsp;</td>
                <td colspan="2">&nbsp;</td>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="6">
                    <div class="box-body table-responsive no-padding">

                    
                    <asp:GridView ID="gvProfil" runat="server" Width="808px" CssClass="table table-hover" OnSelectedIndexChanged="gvProfil_SelectedIndexChanged">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                        </Columns>
                    </asp:GridView>
                        </div>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td colspan="2">&nbsp;</td>
                <td colspan="2">&nbsp;</td>
                 <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 23px"></td>
                <td style="height: 23px" colspan="2"></td>
                 <td style="height: 23px" colspan="2"></td>
                <td style="height: 23px"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td colspan="2">Code</td>
                <td colspan="2">Libelle</td>
                 <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="margin-left: 40px">&nbsp;</td>
                <td class="form-group" colspan="2">
                    <asp:TextBox CssClass="form-control" ID="txtCaode" runat="server"></asp:TextBox>
                </td>
                <td class="form-group" colspan="2">
                    <asp:TextBox CssClass="form-control" ID="txtLibelle" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="margin-left: 40px; height: 23px;"></td>
                <td colspan="2" style="height: 23px">
                    <asp:RequiredFieldValidator ID="RegularExpressionValidator1" ControlToValidate="txtCaode" runat="server" ErrorMessage="RegularExpressionValidator" CssClass="alert alert-danger"></asp:RequiredFieldValidator>
                </td>
                <td style="height: 23px" colspan="2">
                    <asp:RequiredFieldValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtLibelle" ErrorMessage="RegularExpressionValidator" CssClass="alert alert-danger"></asp:RequiredFieldValidator>
                </td>
                 <td style="height: 23px"></td>
            </tr>
            <tr>
                <td style="margin-left: 40px">&nbsp;</td>
                <td colspan="2">&nbsp;</td>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td style="margin-left: 40px; height: 30px;"></td>
                <td style="height: 30px">
                    <asp:Button ID="btnValider" CssClass="btn btn-success" runat="server" Text="Valider" OnClick="btnValider_Click" />
                </td>
                <td style="height: 30px">
                    <asp:Button ID="btnModifier" CssClass="btn btn-primary" runat="server" Text="Modifier" OnClick="btnModifier_Click" />
                </td>
                <td style="height: 30px">
                    <asp:Button ID="btnSupprimer" CssClass="btn btn-danger" runat="server" Text="Supprimer" OnClick="btnSupprimer_Click" />
                </td>
                <td style="height: 30px">
                <asp:Button ID="btnImprimmer" runat="server" OnClientClick="if(!confirm('Vous etes entrain d\'imprimmer la liste des Profiles \n Etes Vous sur?')) return false" Text="Imprimmer" CausesValidation="False" OnClick="btnImprimmer_Click" />
                </td>
            </tr>
            <tr>
                <td style="margin-left: 40px">&nbsp;</td>
                <td colspan="2">&nbsp;</td>
                <td colspan="2">&nbsp;</td>
            </tr>
        </table>
    </form>
</asp:Content>
