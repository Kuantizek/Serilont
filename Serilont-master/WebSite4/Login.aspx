<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderContingut" Runat="Server">
    <asp:Panel ID="PanelLogin" runat="server" CssClass="primerPanel">    
        <asp:Label ID="LabelNomUsuari" runat="server" Text="Nom Usuari"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="LabelContrasenya" runat="server" Text="Contrasenya"></asp:Label>
            <asp:TextBox ID="TextBoxContrasenya" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <asp:Button ID="ButtonEntrar" runat="server" Text="Entrar" />
    </asp:Panel>
</asp:Content>

