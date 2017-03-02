using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.Security;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ButtonEntrar_Click(object sender, EventArgs e)
    {
        if (ORM.comprovarUsuari(TextBoxNomUsuari.Text, TextBoxContrasenya.Text))
        {
            Session["Usuari"] = ORM.buscarUsuari(TextBoxNomUsuari.Text);
            FormsAuthentication.RedirectFromLoginPage(TextBoxNomUsuari.Text, false);
        }

        else
        {
            MostrarMissatge(PanelMensaje, LabelMensaje, TipoMensaje.Error, "Usuari o contrasenya incorrecta.");
        }
    }

    protected enum TipoMensaje
    {
        Error, Correcto
    }

    protected void MostrarMissatge(Panel p, Label l, TipoMensaje tm, String mensaje)
    {
        if (tm == TipoMensaje.Error)
        {
            p.CssClass = "alert alert-dismissible alert-danger";
        }
        else if (tm == TipoMensaje.Correcto)
        {
            p.CssClass = "alert alert-dismissible alert-success";
        }
        l.Text = mensaje;

        p.Visible = true;
    }

    private void netejarDades()
    {
        TextBoxNomUsuari.Text = "";
        TextBoxContrasenya.Text = "";
    }
}