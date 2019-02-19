<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmPersonne.aspx.cs" Inherits="WebTeste.Adminstration.frmPersonne" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 
    <table style="width:100%;">
        <tr>
            <td style="width: 45px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 45px">
                 &nbsp;</td>
            <td colspan="auto">
                 <div class="box-body table-responsive no-padding">
                <asp:GridView ID="gvPersonne" runat="server" Width="1021px" OnSelectedIndexChanged="gvPersonne_SelectedIndexChanged">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                    </Columns>
                </asp:GridView>
                     </div>
            </td>
        </tr>
        <tr>
            <td style="height: 23px; width: 45px;">&nbsp;</td>
            <td style="height: 23px"></td>
            <td style="height: 23px"></td>
            <td style="height: 23px"></td>
            <td style="height: 23px"></td>
            <td style="height: 23px"></td>
            <td style="height: 23px"></td>
            <td style="height: 23px"></td>
        </tr>
        <tr>
            <td style="width: 45px">&nbsp;</td>
            <td>Nom</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 45px">
                &nbsp;</td>
            <td>
                <asp:TextBox CssClass="form-control" ID="txtNom" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtNom" runat="server" CssClass="alert alert-danger" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
            <td style="margin-left: 120px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td style="margin-left: 80px">
                &nbsp;</td>
            <td style="margin-left: 80px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 45px">&nbsp;</td>
            <td>Prenom</td>
            <td style="height: 37px"></td>
            <td style="height: 37px"></td>
            <td style="height: 37px"></td>
            <td style="height: 37px"></td>
            <td style="height: 37px"></td>
            <td style="height: 37px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 45px">
                &nbsp;</td>
            <td>
                <asp:TextBox CssClass="form-control" ID="txtPrenom" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPrenom" ErrorMessage="RequiredFieldValidator" CssClass="alert alert-danger"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 23px; width: 45px">&nbsp;</td>
            <td style="height: 23px">Telephone</td>
            <td style="height: 23px">
                </td>
            <td style="height: 23px">
                </td>
            <td style="height: 23px"></td>
            <td style="height: 23px"></td>
            <td style="height: 23px"></td>
            <td style="height: 23px"></td>
        </tr>
        <tr>
            <td style="width: 45px">
                &nbsp;</td>
            <td>
                <asp:TextBox CssClass="form-control" ID="txtTelephone" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtTelephone" ErrorMessage="RequiredFieldValidator" CssClass="alert alert-danger"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 45px">
                &nbsp;</td>
            <td>
                Email</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 45px; height: 26px;">
                </td>
            <td style="height: 26px">
                <asp:TextBox CssClass="form-control" ID="txtEmail" runat="server"></asp:TextBox>
            </td>
            <td style="height: 26px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEmail" ErrorMessage="RequiredFieldValidator" CssClass="alert alert-danger"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 26px">
                </td>
            <td style="height: 26px"></td>
            <td style="height: 26px"></td>
            <td style="height: 26px"></td>
            <td style="height: 26px"></td>
        </tr>
        <tr>
            <td style="width: 45px">
                &nbsp;</td>
            <td>
                Adresse</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 45px">
                &nbsp;</td>
            <td>
                <asp:TextBox CssClass="form-control" ID="txtAdresse" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtAdresse" ErrorMessage="RequiredFieldValidator" CssClass="alert alert-danger"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 45px">
                &nbsp;</td>
            <td>
                NumPiece</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 45px">
                &nbsp;</td>
            <td>
                <asp:TextBox CssClass="form-control" ID="txtNumpice" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtNumpice" ErrorMessage="RequiredFieldValidator" CssClass="alert alert-danger"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 45px">
                &nbsp;</td>
            <td>
                IdPiece</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 45px">
                &nbsp;</td>
            <td>
                <asp:DropDownList ID="lsPieces" CssClass="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="libelleTypePiece" DataValueField="id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Conn %>" SelectCommand="SELECT * FROM [TypePieces]"></asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 45px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="btnImprimmer" runat="server" OnClientClick="if(!confirm('Vous etes entrain d\'imprimmer la liste des Personnes \n Etes Vous sur?')) return false" Text="Imprimmer" CausesValidation="False" OnClick="btnImprimmer_Click" />
            </td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 45px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
        <p>
        </p>
        <table style="width:100%;">
        <tr>
            <td colspan="3">
            &nbsp;&nbsp;<asp:Button ID="btnAjouter" runat="server" CssClass="btn btn-success" OnClick="btnAjouter_Click" Text="Ajouter" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnModifier" runat="server" CssClass="btn btn-primary" OnClick="Button2_Click" Text="modifier" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnSupprimer" runat="server" CssClass="btn btn-danger" OnClick="btnSupprimer_Click" Text="supprimer" CausesValidation="False" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="btnActuliser" CssClass="btn btn-warning" runat="server" Text="Reset" CausesValidation="False" OnClick="btnActuliser_Click" />
            </td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                Recherche</td>
            <td>
                <asp:TextBox ID="txtRecherche" CssClass="form-control" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Recherche" CausesValidation="False" CssClass="btn btn-default" OnClick="Button1_Click" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:GridView ID="gvRecherche" runat="server" Width="965px">
                </asp:GridView>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>
