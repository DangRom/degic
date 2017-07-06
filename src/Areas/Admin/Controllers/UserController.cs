using System.Collections.Generic;
using DegicEducation.Areas.Admin.Models;
using DegicEducation.Services.IRepository;
using Microsoft.AspNetCore.Mvc;

namespace DegicEducation.Areas.Admin.Controllers{
   [Area("Admin")]
    public class UserController : Controller{
       private readonly IUserRepository _userRepo;
       public UserController(IUserRepository userRepo) => _userRepo = userRepo;

       public IActionResult Index(){
          return View(new List<UserViewModel>());
       }

       public IActionResult New(){
           return View(new UserViewModel());
       }

       public IActionResult Update(){
           return View(new UserViewModel());
       }
    }
}