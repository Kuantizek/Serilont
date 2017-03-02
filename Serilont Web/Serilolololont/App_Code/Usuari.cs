using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity;
/// <summary>
/// Summary description for Class1
/// </summary>
public class Usuari : IdentityUser
{
    public String nomComplet { get; set; }
     
    //public String contrasenya { get; set; }
    
}