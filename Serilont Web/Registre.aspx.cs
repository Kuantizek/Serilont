using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registre : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ButtonRegistre_Click(object sender, EventArgs e)
    {
        String mensaje;
        mensaje = ORM.AltaUsuari(TextBoxNomUsuari.Text, TextBoxContrasenya.Text, TextBoxEmail.Text);
        netejarDades();
    }

    private void netejarDades()
    {
        TextBoxEmail.Text = "";
        TextBoxNomUsuari.Text = "";
        TextBoxContrasenya.Text = "";
        TextBoxConfirmarContrasenya.Text = "";
    }
}