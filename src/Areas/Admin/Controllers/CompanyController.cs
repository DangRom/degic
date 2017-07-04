using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using DegicEducation.Services.Models;

namespace DegicEducation.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class CompanyController:Controller
    {
        public IActionResult Index(){
            return View();
        }

        [HttpPost]
        public IActionResult Index(CompanyModel company){
            try{
                if(ModelState.IsValid){

                }
                return View();
            }catch(Exception ex){
                ModelState.AddModelError("", ex.Message);
                return View();
            }
        }
    }
}
