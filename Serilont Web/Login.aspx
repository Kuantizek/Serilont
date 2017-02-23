<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderContingut" runat="Server">
    <asp:Panel ID="PanelLogin" runat="server" CssClass="primerPanel">
        <asp:Label ID="LabelNomUsuari" runat="server" Text="Nom Usuari"></asp:Label>
        <asp:TextBox ID="TextBoxNomUsuari" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorNomUsuari" runat="server" ErrorMessage="ERROR: No has introduit un nom d'usuari." ControlToValidate="TextBoxNomUsuari" CssClass="labelsError"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="LabelContrasenya" runat="server" Text="Contrasenya"></asp:Label>
        <asp:TextBox ID="TextBoxContrasenya" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorContrasenya" runat="server" ErrorMessage="ERROR: No has introduit una contrasenya." ControlToValidate="TextBoxContrasenya" CssClass="labelsError"></asp:RequiredFieldValidator>
        <br />
        <asp:Button ID="ButtonEntrar" runat="server" Text="Entrar" CssClass="btn btn-default" OnClick="ButtonEntrar_Click" />
    </asp:Panel>
    <asp:Panel ID="PanelMensaje" runat="server" Visible="False">
        <button type="button" class="close" data-dismiss="alert">x</button>
        <asp:Label ID="LabelMensaje" runat="server" Text=""></asp:Label>
    </asp:Panel>
</asp:Content>

