<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmPersonne.aspx.cs" Inherits="WebTeste.Administration.frmPersonne" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      
        <div class="card card-group" style="width:100%;  margin-top:1px; margin-left:5px; margin-right:5px;">
            <div class="card-body">
            
                <div class="card-body">
                    <asp:GridView ID="gvPersonne" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%" OnSelectedIndexChanged="gvPersonne_SelectedIndexChanged">
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
                </div>
        
           <div class="card-body">
                <div class="form-group">
                
                    <asp:Label ID="Label1" CssClass="control-label" runat="server" Text="Nom"></asp:Label>
                    <asp:TextBox ID="Nomtxt" CssClass="form-control" runat="server" Width="207px" AutoComplete="off"></asp:TextBox>
                    
                    <asp:Label ID="Label2" CssClass="control-label" runat="server" Text="Prénom"></asp:Label>
                     <asp:TextBox ID="Prenomtxt" CssClass="form-control" runat="server" Width="207px" AutoComplete="off"></asp:TextBox>

                    <asp:Label ID="Label3" CssClass="control-label" runat="server" Text="Téléphone"></asp:Label>
                    <asp:TextBox ID="Teltxt" CssClass="form-control" runat="server" Width="207px" AutoComplete="off"></asp:TextBox>

                </div>
                     
            <div class="form-group">
                
                    <asp:Label ID="Label4" CssClass="control-label" runat="server" Text="Adresse"></asp:Label>
                    <asp:TextBox ID="Adressetxt" CssClass="form-control" runat="server" Width="207px" AutoComplete="off" ></asp:TextBox>

                    <asp:Label ID="Label5" CssClass="control-label" runat="server" Text="Email"></asp:Label>
                    <asp:TextBox ID="Emailtxt" CssClass="form-control" runat="server" Width="207px" AutoComplete="off"></asp:TextBox>
                
                    <asp:Label ID="Label6" runat="server" CssClass="control-label" Text="TypePiece"></asp:Label>                
                         <asp:DropDownList ID="Typecbb" CssClass="form-control" runat="server" DataTextField="libelleTypePiece" DataValueField="id" Height="35px" Width="174px">
                    </asp:DropDownList>
               
            </div>
       
            <div class="form-group">
               
                 <asp:Label ID="Label7" CssClass="control-label" runat="server" Text="Numero de pièce"></asp:Label>
                 <asp:TextBox ID="Numpiecetxt" CssClass="form-control" runat="server" Width="207px" AutoComplete="off"></asp:TextBox>
               
            </div>
        
            <div class="form-group">       
                    <asp:Button ID="btnAjout" runat="server" CssClass="btn btn-success"  Text="Ajouter" OnClick="btnAjout_Click" />
              
                    <asp:Button ID="btnUpdate" runat="server" CssClass="btn btn-warning"  Text="Modifier" OnClick="btnUpdate_Click" />
                
                    <asp:Button ID="btnDelete" runat="server"  CssClass="btn btn-danger" Text="Supprimer" OnClick="btnDelete_Click" />
                
            </div>
            </div>
            </div>
       </div>
 
</asp:Content>
