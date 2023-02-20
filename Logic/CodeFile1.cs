using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using WebApplication10.Models;



namespace WebApplication10.Logic
{
    internal class RoleActions
    {
        internal void AddUserAndRole()
        {


            ApplicationDbContext context = new ApplicationDbContext();
            IdentityResult IdRoleResult;
            IdentityResult IdUserResult;


            var roleStore = new RoleStore<IdentityRole>(context);


            var roleMgr = new RoleManager<IdentityRole>(roleStore);


            if (!roleMgr.RoleExists("Admin"))
            {
                IdRoleResult = roleMgr.Create(new IdentityRole { Name = "Admin" });
            }


            var userMgr = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(context));
            var appUser = new ApplicationUser

            {
                UserName = "Cvetko@gmail.com",
                Email = "Cvetko@gmail.com"
            };

            IdUserResult = userMgr.Create(appUser, "Zavesa123!");


            if (!userMgr.IsInRole(userMgr.FindByEmail("Cvetko@gmail.com").Id, "Admin"))
            {
                IdUserResult = userMgr.AddToRole(userMgr.FindByEmail("Cvetko@gmail.com").Id, "Admin");
            }



        }
    }
}