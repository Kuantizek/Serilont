<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registre.aspx.cs" Inherits="Registre" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderContingut" Runat="Server">
<asp:Panel ID="PanelRegistre" runat="server" CssClass="primerPanel">
        <asp:Label ID="LabelNomUsuari" runat="server" Text="Nom Usuari*"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="LabelContrasenya" runat="server" Text="Contrasenya*"></asp:Label>
        <asp:TextBox ID="TextBoxContrasenya" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <asp:Label ID="LabelConfirmarContrasenya" runat="server" Text="Confirmar Contrasenya*"></asp:Label>
        <asp:TextBox ID="TextBoxConfirmarContrasenya" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <asp:Button ID="ButtonRegistre" runat="server" Text="Registrar" />
        <br />
        <asp:Label ID="LabelAsterisc" runat="server" Text="(els camps marcats amb * són obligatoris)"></asp:Label>
    </asp:Panel>
</asp:Content>

