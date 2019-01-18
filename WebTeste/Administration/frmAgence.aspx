<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmAgence.aspx.cs" Inherits="WebTeste.Administration.frmAgence" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form >
    <div class="box-body" >
            
            <div class="box-body">
                <div class="box-body">
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
                </div>
            <div class="box-body">
            
            <div class="box-body">
                    <div class="form-group col-md-3 col-sm-6 col-xs-12">
                        <asp:Label ID="Label1" CssClass="control-label" runat="server" Text="Libellé"></asp:Label>
                    <asp:TextBox ID="Libtxt" CssClass="form-control" runat="server" Width="207px" AutoComplete="off"></asp:TextBox>
                    </div>

                <div class="form-group col-md-3 col-sm-6 col-xs-12">
                    <asp:Label ID="Label2" CssClass="control-label" runat="server" Text="Quartier"></asp:Label>
                    <asp:TextBox ID="Quartiertxt" CssClass="form-control" runat="server" Width="207px" AutoComplete="off"></asp:TextBox>
                    </div>
                    
                
                <div class="form-group col-md-3 col-sm-6 col-xs-12">
                    <asp:Label ID="Label3" CssClass="control-label" runat="server" Text="Ville"></asp:Label>
                    <asp:DropDownList ID="VilleCbb" CssClass="form-control" runat="server"  DataTextField="libelleVille" DataValueField="idVille" Height="26px" Width="140px">
                    </asp:DropDownList>                     

                </div>
                    
                      
            </div>
        
            
            <div class="box-body">
                
                    
                    <div class="form-group col-md-3 col-sm-3 col-xs-4">
                    <asp:Button ID="btnAjout" runat="server" CssClass="btn btn-success" Text="Ajouter" OnClick="btnAjout_Click" />
                </div>
                
                <div class="form-group col-md-3 col-sm-3 col-xs-4">
                                <asp:Button ID="btnUpdate" runat="server" CssClass="btn btn-warning"  Text="Modifier" OnClick="btnUpdate_Click" />
                </div>
                
                    <div class="form-group col-md-3 col-sm-3 col-xs-4">
                    <asp:Button ID="btnDelete" runat="server" CssClass="btn btn-danger"  Text="Supprimer" OnClick="btnDelete_Click" />
                </div>
                
             </div>
                
      
                
            </div>

        </div>
        </div>
    </form>
</asp:Content>
