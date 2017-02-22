<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registre.aspx.cs" Inherits="Registre" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderContingut" Runat="Server">
<asp:Panel ID="PanelRegistre" runat="server" CssClass="primerPanel">
        <asp:Label ID="LabelNomUsuari" runat="server" Text="Nom Usuari*"></asp:Label>
        <asp:TextBox ID="TextBoxNomUsuari" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorNomUsuari" runat="server" ErrorMessage="ERROR: No has introduit un nom d'usuari." ControlToValidate="TextBoxNomUsuari" CssClass="labelsError"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="LabelContrasenya" runat="server" Text="Contrasenya*"></asp:Label>
        <asp:TextBox ID="TextBoxContrasenya" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorContrasenya" runat="server" ErrorMessage="ERROR: No has introduit una contrasenya." ControlToValidate="TextBoxContrasenya" CssClass="labelsError"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="LabelConfirmarContrasenya" runat="server" Text="Confirmar Contrasenya*"></asp:Label>
        <asp:TextBox ID="TextBoxConfirmarContrasenya" runat="server" TextMode="Password"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidatorContrasenya" runat="server" ControlToCompare="TextBoxContrasenya" ControlToValidate="TextBoxConfirmarContrasenya" ErrorMessage="ERROR: Les contrasenyes no coincideixen." CssClass="labelsError"></asp:CompareValidator>
        <br />
        <asp:Button ID="ButtonRegistre" runat="server" Text="Registrar" />
        <br />
        <asp:Label ID="LabelAsterisc" runat="server" Text="(els camps marcats amb * són obligatoris)"></asp:Label>
    </asp:Panel>
</asp:Content>

