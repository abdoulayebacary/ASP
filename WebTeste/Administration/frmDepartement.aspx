<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmDepartement.aspx.cs" Inherits="WebTeste.Administration.frmDepartement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form >    
        <div class="card card-group" style="margin-top:1px; margin-left:5px; margin-right:5px;">
        <div class="card-body">
            <div class="card-body">
                <asp:GridView ID="gvDepartement" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="100%" OnSelectedIndexChanged="gvDepartement_SelectedIndexChanged">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
            </div>
            <div class="text-center">FORMULAIRE D'AJOUT</div>
        <div  class="card-body">
        <div class="form-group">
                <asp:Label ID="Label1" CssClass="control-label" runat="server" Text="Libellé"></asp:Label>
                <asp:TextBox ID="txtLib" CssClass="form-control" runat="server" Height="33px" Width="279px" AutoComplete="off"></asp:TextBox>
                
         </div>
        <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Région" CssClass="control-label"></asp:Label>
                <asp:DropDownList CssClass="form-control" ID="RegionCBB" runat="server" Height="33px" Width="274px" DataTextField="libelleRegion" DataValueField="idRegion">
                </asp:DropDownList>
        </div>
        <div class="form-group">
                <asp:Button ID="btnAdd" runat="server" CssClass="btn btn-success" Text="Ajouter"  OnClick="btnAdd_Click" />
                <asp:Button ID="btnUpdate" runat="server" CssClass="btn btn-warning" Text="Modifier"  OnClick="btnUpdate_Click" />
                <asp:Button ID="btnDelete" runat="server"  CssClass="btn btn-danger" Text="Supprimer"  OnClick="btnDelete_Click" />
        </div>
    </div>
    </div>
    </div>
</form>

</asp:Content>
