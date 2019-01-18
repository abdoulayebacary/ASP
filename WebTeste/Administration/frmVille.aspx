<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmVille.aspx.cs" Inherits="WebTeste.Administration.frmVille" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form >
    <div class="card card-group" style="margin-top:1px; margin-left:5px; margin-right:5px;">
    <div class="card-body">
        <div class="card-body">
                <asp:GridView ID="gvVille" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Width="100%" OnSelectedIndexChanged="gvVille_SelectedIndexChanged" >
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
        </div>
            <div class="text-center">FORMULAIRE D'AJOUT</div>
        <div class="card-body">
        <div  class="form-group">           
                <asp:Label ID="Label1" runat="server" Text="Libellé" CssClass="control-label" ></asp:Label>
                 <asp:TextBox CssClass="form-control" ID="txtLib" runat="server" Width="295px" AutoComplete="off"></asp:TextBox>        
        </div>
        <div class="form-group">
            <asp:Label ID="Label2" runat="server" Text="Département" CssClass="control-label"></asp:Label>
                <asp:DropDownList CssClass="form-control"  ID="departementCbb" runat="server" Height="33px" Width="274px" DataTextField="libelleDepartement" DataValueField="idDepartement">
                </asp:DropDownList>
        </div>
        <div class="form-group">
                <asp:Button ID="btnAdd" runat="server" Text="Ajouter"  OnClick="btnAdd_Click" CssClass="btn btn-success" />
                <asp:Button ID="btnUpdate" runat="server" Text="Modifier" CssClass="btn btn-warning" OnClick="btnUpdate_Click" Width="83px" />
                <asp:Button ID="btnDelet" runat="server" Text="Supprimer" CssClass="btn btn-danger" BackColor="red" OnClick="btnDelet_Click" />
        </div>
    </div>
    </div>
    </div>
        </form> 
</asp:Content>
