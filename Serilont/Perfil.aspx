<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Perfil.aspx.cs" Inherits="Perfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderContingut" runat="Server">
    <asp:Panel ID="PanelLogin" runat="server" CssClass="primerPanel">
        <asp:Label ID="Label1" runat="server" Text="[aquí va el nom de l'usuari connectat]"></asp:Label>
    </asp:Panel>
</asp:Content>

