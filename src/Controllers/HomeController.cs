using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using DegicEducation.Models;
using DegicEducation.Services.IRepository;
using Microsoft.AspNetCore.Mvc;

namespace DegicEducation.Controllers
{
    public class HomeController : Controller
    {
        private readonly ICompanyRepository _companyRepo;

        public HomeController(ICompanyRepository companyRepo){
            _companyRepo = companyRepo;
        }
        public async Task<IActionResult> Index(){
            try{
                var companymodel = await Task.Factory.StartNew(() => _companyRepo.GetCompanyForHome());
                var company = new CompanyViewModel{
                    Description = companymodel.Description
                };
                return View(company);
            }catch{throw;}
        }

        public IActionResult About()
        {
            ViewData["Message"] = "Your application description page.";

            return View();
        }

        public IActionResult Contact()
        {
            ViewData["Message"] = "Your contact page.";

            return View();
        }

        public IActionResult Error()
        {
            return View();
        }
    }
}
