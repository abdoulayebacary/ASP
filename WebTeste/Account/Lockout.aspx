<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Lockout.aspx.cs" Inherits="WebTeste.Account.Lockout" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup>
        <h1>Verrouillé.</h1>
        <h2 class="text-danger">Ce compte a été verrouillé ; veuillez réessayer ultérieurement.</h2>
    </hgroup>
</asp:Content>
