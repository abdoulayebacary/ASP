<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FrmUser.aspx.cs" Inherits="WebTeste.Adminstration.FrmUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <table style="width:100%;" aria-autocomplete="`">
            <tr>
                <td style="height: 23px">&nbsp;</td>
                <td style="height: 23px"></td>
                <td style="height: 23px"></td>
            </tr>
            <tr>
                <td colspan="3" style="height: 23px">
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
                <td>&nbsp;
                </td>
                 <td>&nbsp;
                </td>
                 <td>&nbsp;
                </td>
            </tr>
            <tr>
                <td style="height: 23px">Username</td>
                <td style="height: 23px">&nbsp;</td>
                <td style="height: 23px">&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 59px">
                    <asp:TextBox CssClass="form-control" ID="txtUsername" runat="server"></asp:TextBox>
                    
                </td>
                <td style="height: 59px"></td>
                <td style="height: 59px">
                     &nbsp;</td>
            </tr>
             <tr>
                <td>&nbsp;
                Password</td>
                 <td>&nbsp; </td>
                 <td>&nbsp;</td>
            </tr>
             <tr>
                <td>&nbsp;
                <asp:TextBox CssClass="form-control" ID="txtPassword" runat="server"></asp:TextBox>
                </td>
                 <td>&nbsp;
                     </td>
                 <td>&nbsp;
                     </td>
            </tr>
            <tr>
                <td>
                    idProfile</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                     <asp:DropDownList  CssClass="form-control" ID="lsProfile" runat="server" DataSourceID="SqlDataSource2" DataTextField="libelleProfil" DataValueField="id">
                     </asp:DropDownList>
                     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Conn %>" SelectCommand="SELECT [id], [libelleProfil] FROM [Profils]"></asp:SqlDataSource>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    IdAgence</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
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
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnValider" runat="server" CssClass="btn btn-success" Text="Valider" OnClick="btnValider_Click" />
                </td>
                <td>
                    <asp:Button ID="BtnModifier" runat="server" CssClass="btn btn-primary" Text="Modifier" OnClick="BtnModifier_Click" />
                </td>
                <td>
                    <asp:Button ID="btnSupprimer" runat="server" Text="Supprimer" CssClass="btn btn-danger" OnClick="btnSupprimer_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </form>
</asp:Content>
