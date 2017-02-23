using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity;

using System.Data.Entity.Infrastructure;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
/// <summary>
/// Descripción breve de ORM
/// </summary>
public static class ORM
{
    static serilontEntities contexto = new serilontEntities();
    static IdentityDbContext<Usuari> context = new IdentityDbContext<Usuari>();
    static UserStore<Usuari> userStore = new UserStore<Usuari>(context);
    static UserManager<Usuari> userManager = new UserManager<Usuari>(userStore);

    public static String AltaUsuari(String username, String contraseña, String email)
    {
        string msg = "";

        Usuaris usu = new Usuaris();

        usu.username = username;
        usu.password = contraseña;
        usu.email = email;

        try
        {
            contexto.Usuaris.Add(usu);
            contexto.SaveChanges();
        }

        catch (InvalidOperationException ex)
        {
            msg = ex.InnerException.ToString();
        }
        catch (DbUpdateException ex)
        {
            SqlException sqlEx = (SqlException)ex.InnerException.InnerException;

            msg = ErroresSQL.MensajeSQL(sqlEx);
            contexto.Usuaris.Remove(usu);
        }

        return msg;
        
    }

    public static bool comprovarUsuari(String nom, String contrasenya)
    {
        Usuari u = userManager.FindByName(nom);

        return userManager.CheckPassword(u, contrasenya);
    }

    public static Usuari buscarUsuari (String nom)
    {
        return userManager.FindByName(nom);
    }
}