using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using DegicEducation.Areas.Admin.Models;
using DegicEducation.Services.IRepository;
using DegicEducation.Services.Models;
using Microsoft.AspNetCore.Mvc;

namespace DegicEducation.Areas.Admin.Controllers{
   [Area("Admin")]
    public class UserController : Controller{
       private readonly IUserRepository _userRepo;
       public UserController(IUserRepository userRepo) => _userRepo = userRepo;

       public async Task<IActionResult> Index(){
          try{
            var usermodels = await Task.Factory.StartNew(() => _userRepo.GetAllUser());
            var users = usermodels.Select(u => new UserViewModel{
                UserName = u.UserName,
                FullName = u.FullName,
                Activated = u.Activated,
                Id = u.UserName
            }).ToList();
            return View(users);
          }catch(Exception ex){
              ModelState.AddModelError("", ex.Message);
              return View();
          }
       }

       public IActionResult New(){
           return View();
       }

       [HttpPost]
       public async Task<IActionResult> New(UserViewModel user){
           try{
            if(ModelState.IsValid){
                if(!_userRepo.CheckUsername(user.UserName)){
                    ModelState.AddModelError("", "hay thu username khac");
                    return View();
                }
                user.Password = Commons.Seucre.MD5Hash(user.Password);
                var usermodel = new UserModel(){
                    UserName = user.UserName,
                    Password = user.Password,
                    FullName = user.FullName,
                    Activated = user.Activated
                };
                await Task.Factory.StartNew(() => _userRepo.Insert(usermodel));
                return RedirectToAction("New");
            }
            return View();
           }catch(Exception ex){
              ModelState.AddModelError("", ex.Message);
              return View();
          }
       }

       [HttpGet]
       public IActionResult Update(string id){
           try{
                var usermodel = _userRepo.GetUserByUserName(id);
                if(usermodel == null){
                    ModelState.AddModelError("", "khong tim thay du lieu");
                    return View();
                }
                var user = new UserViewModel(){
                    UserName = usermodel.UserName,
                    FullName = usermodel.FullName,
                    Activated = usermodel.Activated
                };
                return View(user);
           }catch(Exception ex){
              ModelState.AddModelError("", ex.Message);
              return View();
          }
       }

       [HttpPost]
       public async Task<IActionResult> Update(UserViewModel user){
           try{
                if(ModelState.IsValid){
                    var usermodel = new UserModel(){
                        UserName = user.UserName,
                        FullName = user.FullName,
                        Password = user.Password,
                        Activated = user.Activated
                    };
                    await Task.Factory.StartNew(() => _userRepo.Update(usermodel));
                    return RedirectToAction("Index");
                }
                return View();
           }catch(Exception ex){
              ModelState.AddModelError("", ex.Message);
              return View();
           }
       }

       [HttpDelete]
       public JsonResult Delete(string id){
           try{
                _userRepo.Delete(id);
                return Json("OK");
           }catch(Exception ex){
               return Json(ex.Message);
           }
       }
    }
}