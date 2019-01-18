<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FrmUser.aspx.cs" Inherits="WebTeste.Adminstration.FrmUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <table style="width:100%;" aria-autocomplete="`">
            <tr>
                <td style="height: 23px; width: 59px;">&nbsp;</td>
                <td style="height: 23px" colspan="4">&nbsp;</td>
                <td style="height: 23px"></td>
                <td style="height: 23px"></td>
            </tr>
            <tr>
                <td style="height: 23px; width: 59px;">
                     &nbsp;</td>
                <td colspan="6" style="height: 23px">
                     <div class="box-body table-responsive no-padding">
                    <asp:GridView ID="gvUser" runat="server" Width="1126px" OnSelectedIndexChanged="gvUser_SelectedIndexChanged">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                        </Columns>
                    </asp:GridView>
                         </div>
                </td>
            </tr>
            <tr>
                <td style="width: 59px">&nbsp;</td>
                <td colspan="4">&nbsp;
                </td>
                 <td>&nbsp;
                </td>
                 <td>&nbsp;
                </td>
            </tr>
            <tr>
                <td style="height: 23px; width: 59px;">&nbsp;</td>
                <td style="height: 23px" colspan="4">Username</td>
                <td style="height: 23px">&nbsp;</td>
                <td style="height: 23px">&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 59px; width: 59px;">
                    
                </td>
                <td style="height: 59px" colspan="4">
                    <asp:TextBox CssClass="form-control" ID="txtUsername" runat="server"></asp:TextBox>
                    
                </td>
                <td style="height: 59px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtUsername" runat="server" ErrorMessage="Nom utilisateur est requis" CssClass="alert alert-danger"></asp:RequiredFieldValidator>
                </td>
                <td style="height: 59px">
                     </td>
            </tr>
             <tr>
                <td style="width: 59px; height: 30px"></td>
                <td colspan="4" style="height: 30px">&nbsp;
                Password</td>
                 <td style="height: 30px">&nbsp; </td>
                 <td style="height: 30px"></td>
            </tr>
             <tr>
                <td style="width: 59px; height: 30px">
                </td>
                <td colspan="4" style="height: 30px">&nbsp;
                <asp:TextBox CssClass="form-control" TextMode="Password" ID="txtPassword" runat="server"></asp:TextBox>
                </td>
                 <td style="height: 30px">&nbsp;
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtPassword" runat="server"  ErrorMessage="Mot de passe est requis" CssClass="alert alert-danger"></asp:RequiredFieldValidator>
                     </td>
                 <td style="height: 30px">&nbsp;
                     </td>
            </tr>
             <tr>
                <td style="width: 59px; height: 30px">&nbsp;</td>
                <td colspan="4" style="height: 30px">Confirmation</td>
                 <td style="height: 30px">&nbsp;</td>
                 <td style="height: 30px">&nbsp;</td>
            </tr>
             <tr>
                <td style="width: 59px; height: 30px">&nbsp;</td>
                <td colspan="4" style="height: 30px">
                    <asp:TextBox CssClass="form-control" TextMode="Password" ID="txtconfirmation" runat="server"></asp:TextBox>
                </td>
                 <td style="height: 30px">
                     <asp:CompareValidator ID="CompareValidator1" ControlToValidate="txtconfirmation" ControlToCompare="txtPassword" runat="server" ErrorMessage="la confirmation doit etre identique au mot de passe rensigner" CssClass="alert alert-danger"></asp:CompareValidator>
                 </td>
                 <td style="height: 30px">&nbsp;</td>
            </tr>
             <tr>
                <td style="width: 59px; height: 30px">&nbsp;</td>
                <td colspan="4" style="height: 30px">&nbsp;</td>
                 <td style="height: 30px">&nbsp;</td>
                 <td style="height: 30px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 59px; height: 34px">
                    </td>
                <td colspan="4" style="height: 34px">
                    idProfile</td>
                <td style="height: 34px">
                    </td>
                <td style="height: 34px">
                    </td>
            </tr>
            <tr>
                <td style="width: 59px; height: 59px">
                </td>
                <td colspan="4" style="height: 59px">
                     <asp:DropDownList  CssClass="form-control" ID="lsProfile" runat="server" DataSourceID="SqlDataSource2" DataTextField="libelleProfil" DataValueField="id">
                     </asp:DropDownList>
                     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Conn %>" SelectCommand="SELECT [id], [libelleProfil] FROM [Profils]"></asp:SqlDataSource>
                </td>
                <td style="height: 59px">
                    </td>
                <td style="height: 59px">
                    </td>
            </tr>
            <tr>
                <td style="width: 59px; height: 37px">
                    </td>
                <td colspan="4" style="height: 37px">
                    IdAgence</td>
                <td style="height: 37px">
                    </td>
                <td style="height: 37px">
                    </td>
            </tr>
            <tr>
                <td style="width: 59px">
                     &nbsp;</td>
                <td colspan="4">
                     <asp:DropDownList CssClass="form-control" ID="LsIdAgence" runat="server" DataSourceID="SqlDataSource1" DataTextField="libelleAgence" DataValueField="idAgence">
                     </asp:DropDownList>
                     <asp:SqlDataSource ID="SqlDataSource1"  runat="server" ConnectionString="<%$ ConnectionStrings:Conn %>" SelectCommand="SELECT [idAgence], [libelleAgence] FROM [Agences]"></asp:SqlDataSource>
                     </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 59px">
                    &nbsp;</td>
                <td colspan="4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 59px">
                    &nbsp;</td>
                <td colspan="4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 59px">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnValider" runat="server" CssClass="btn btn-success" Text="Valider" OnClick="btnValider_Click" />
                </td>
                <td>
                    <asp:Button ID="BtnModifier" runat="server" CssClass="btn btn-primary" Text="Modifier" OnClick="BtnModifier_Click" />
                </td>
                <td>
                    <asp:Button ID="btnSupprimer" runat="server" Text="Supprimer" CssClass="btn btn-danger" OnClick="btnSupprimer_Click" />
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 59px">
                    &nbsp;</td>
                <td colspan="4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="height: 23px; width: 59px;">
                    &nbsp;</td>
                <td style="height: 23px" colspan="4">
                    </td>
                <td style="height: 23px">
                    </td>
                <td style="height: 23px">
                    </td>
            </tr>
            <tr>
                <td style="width: 59px">
                    &nbsp;</td>
                <td colspan="4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </form>
</asp:Content>
