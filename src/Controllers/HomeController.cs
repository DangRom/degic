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
            }catch{return View("Error");}
        }

        [Route("/ve-chung-toi")]
        public async Task<IActionResult> About()
        {
            try{
                var aboutmodel = await Task.Factory.StartNew(() => _companyRepo.GetAbout().About);
                var about = new CompanyViewModel(){
                    About = aboutmodel
                };
                return View(about);
            }catch{return View("Error");}
        }

        [Route("/lien-he")]
        public IActionResult Contact()
        {
            try{
                var companymodel = _companyRepo.GetCompanyForFooter();
                var company = new CompanyViewModel(){
                    Hotline = companymodel.Hotline,
                    Phone = companymodel.Phone,
                    Address = companymodel.Address,
                    Email = companymodel.Email
                };
                return View(company);
            }catch{return View("Error");}
        }

        public IActionResult Error()
        {
            return View();
        }
    }
}
