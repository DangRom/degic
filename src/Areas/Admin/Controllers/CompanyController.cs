using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using DegicEducation.Services.Models;
using DegicEducation.Services.IRepository;
using DegicEducation.Areas.Admin.Models;

namespace DegicEducation.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class CompanyController:Controller
    {
        private readonly ICompanyRepository _companyRepo;

        public CompanyController(ICompanyRepository companyRepo) => _companyRepo = companyRepo;

        public IActionResult Index(){
            try{
                var companyModel = _companyRepo.GetCompany();
                if(companyModel == null) return View(new CompanyViewModel());
                var company = new CompanyViewModel(){
                    Name = companyModel.Name,
                    Address = companyModel.Address,
                    Email = companyModel.Email,
                    Hotline = companyModel.Hotline,
                    Phone = companyModel.Phone,
                    TaxCode = companyModel.TaxCode,
                    Google = companyModel.Google,
                    Tweeter = companyModel.Tweeter,
                    Facebook = companyModel.Facebook,
                    Description = companyModel.Description,
                    About = companyModel.About
                };
                return View(company);
            }catch(Exception ex){
                ModelState.AddModelError("",ex.Message);
                return View();
            }
        }

        [HttpPost]
        public IActionResult Index(CompanyViewModel company){
            try{
                if(ModelState.IsValid){
                    var companyModel = new CompanyModel(){
                        Name = company.Name,
                        Address = company.Address,
                        Email = company.Email,
                        Hotline = company.Hotline,
                        Phone = company.Phone,
                        TaxCode = company.TaxCode,
                        Google = company.Google,
                        Tweeter = company.Tweeter,
                        Facebook = company.Facebook,
                        Description = company.Description,
                        About = company.About
                    };
                    _companyRepo.SaveCompany(companyModel);
                    return RedirectToAction("Index");
                }
                return View();
            }catch(Exception ex){
                ModelState.AddModelError("", ex.Message);
                return View();
            }
        }
    }
}
