using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using DegicEducation.Services.IRepository;
using DegicEducation.Areas.Admin.Models;
using System.Security.Claims;
using Microsoft.AspNetCore.Authorization;

namespace DegicEducation.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class AccountController : Controller{
        private readonly IUserRepository _userRepo;
        public AccountController(IUserRepository userRepo) => _userRepo = userRepo;
        
        public IActionResult Login(){
            var logineduser = HttpContext.User;
            if(!string.IsNullOrEmpty(logineduser.Identity.Name)){
                return Redirect("/Admin/Dashboard/Index");
            }
            return View();
        }

        [HttpPostAttribute]
        public async Task<IActionResult> Login(LoginViewModel login){
            try{
                if(ModelState.IsValid){
                    login.Password = Commons.Seucre.MD5Hash(login.Password);
                    if(await Task.Factory.StartNew(() => _userRepo.Login(login.UserName, login.Password))){
                        var claim = new List<Claim>{
                            new Claim(ClaimTypes.Name, login.UserName)
                        };
                        var userIdentity = new ClaimsIdentity(claim, "login");
                        ClaimsPrincipal principal = new ClaimsPrincipal(userIdentity);
                        await HttpContext.Authentication.SignInAsync("CookieAuthentication", principal);
                        return Redirect("/Admin/Dashboard/Index");
                    }   
                    ModelState.AddModelError("", "Sai user hoac password");
                    return View(login);
                }
                return View();
            }catch(Exception ex){ 
                ModelState.AddModelError("", ex.Message);
                return View(login);
            }
        }

        public async Task<IActionResult> LogOut(){
            await HttpContext.Authentication.SignOutAsync("CookieAuthentication");
	        return Redirect("/admin");
        }

        [Authorize]
        public IActionResult ChangePassword(){
            var logineduser = HttpContext.User;
            var user = new ChangePasswordViewModel(){
                UserName = logineduser.Identity.Name
            };
            return View(user);
        }

        [HttpPostAttribute]
        [Authorize]
        public async Task<IActionResult> ChangePassword(ChangePasswordViewModel changepass){
            try{
                if(ModelState.IsValid){
                    changepass.OldPassword = Commons.Seucre.MD5Hash(changepass.OldPassword);
                    changepass.NewPassword = Commons.Seucre.MD5Hash(changepass.NewPassword);
                    if(await Task.Factory.StartNew(() => _userRepo.Login(changepass.UserName, changepass.OldPassword))){
                        await Task.Factory.StartNew(() => _userRepo.ChangePassword(changepass.UserName, changepass.NewPassword));
                        return Redirect("/admin/dashboard/index")    ;
                    }
                    ModelState.AddModelError("", "Mật khẩu cũ không đúng.");
                }
                return View();
            }catch(Exception ex){
                ModelState.AddModelError("", ex.Message);
                return View();
            }
        }
    }
}
