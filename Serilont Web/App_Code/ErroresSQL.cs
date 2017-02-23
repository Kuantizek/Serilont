using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de ErroresSQL
/// </summary>
public static class ErroresSQL
{
    public static String MensajeSQL(SqlException sqlEx)
    {
        String mensaje = "";

        switch (sqlEx.Number)
        {
            case 547:
                mensaje = "No se puede borrar, tiene registros relacionados";
                break;
            case 2627:
                mensaje = "El registro ya existe.";
                //contexto.usuaris.Remove(usuari);
                break;
            case 2601:
                mensaje = "No se puede insertar este registro ya que estaria duplicado.";
                break;
            default:
                mensaje = sqlEx.Number + " - " + sqlEx.Message;
                break;
        }
        return mensaje;
    }
}