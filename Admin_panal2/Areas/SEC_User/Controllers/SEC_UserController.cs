﻿using Admin_panal2.Areas.SEC_User.Models;
using Admin_panal2.DAL.SEC_User;
using Microsoft.AspNetCore.Mvc;
using System.Data;

namespace Admin_panal2.Areas.SEC_User.Controllers
{
    [Area("SEC_User")]
    [Route("SEC_User/[controller]/[action]")]
    public class SEC_UserController : Controller
    {
        public IActionResult SEC_UserLogin()
        {
            return View();
        }

        public IActionResult SEC_UserRegister()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Login(SEC_UserModel modelSEC_User)
        {
            string error = null;

            if (modelSEC_User.UserName == null)
            {
                error += "User Name is required";
            }
            if (modelSEC_User.Password == null)
            {
                error += "<br/>Password is required";
            }

            if (error != null)
            {
                TempData["Error"] = error;
                return RedirectToAction("SEC_UserLogin");
            }
            else
            {

                SEC_UserDAL sEC_UserDAL = new SEC_UserDAL();
                DataTable dt = sEC_UserDAL.dbo_PR_SEC_User_SelectByUserNamePassword(modelSEC_User.UserName, modelSEC_User.Password);
                if (dt.Rows.Count > 0)
                {
                    foreach (DataRow dr in dt.Rows)
                    {
                        Console.WriteLine(dr);
                        HttpContext.Session.SetString("UserName", dr["UserName"].ToString());
                        HttpContext.Session.SetString("UserID", dr["UserID"].ToString());
                        HttpContext.Session.SetString("Password", dr["Password"].ToString());
                        HttpContext.Session.SetString("FirstName", dr["FirstName"].ToString());
                        HttpContext.Session.SetString("LastName", dr["LastName"].ToString());
                        //HttpContext.Session.SetString("PhotoPath", dr["PhotoPath"].ToString());
                        break;
                    }
                }
                else
                {
                    TempData["Error"] = "UserName or Password is invalid!";
                    return RedirectToAction("SEC_UserLogin");
                }
                if (HttpContext.Session.GetString("UserName") != null && HttpContext.Session.GetString("Password") != null && HttpContext.Session.GetString("UserName") == "Admin")
                {
                    return RedirectToAction("SEC_AdminDashboard", "SEC_Admin", new { area = "SEC_Admin" });
                }
                else if (HttpContext.Session.GetString("UserName") != null && HttpContext.Session.GetString("Password") != null)
                {
                    return RedirectToAction("Index", "Home");
                }
            }
            return RedirectToAction("Index");
        }

        public IActionResult Logout()
        {
            HttpContext.Session.Clear();
            return RedirectToAction("SEC_UserLogin");
        }


    }
}
