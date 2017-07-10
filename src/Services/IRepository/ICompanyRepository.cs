using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using DegicEducation.Services.InfactStructure;
using DegicEducation.Services.Models;

namespace DegicEducation.Services.IRepository
{
    public interface ICompanyRepository : IRepositoriesBase<CompanyModel>{
        CompanyModel GetCompany();
        void SaveCompany(CompanyModel model);
        CompanyModel GetCompanyForHome();
        CompanyModel GetCompanyForHead();
        CompanyModel GetCompanyForFooter();
        CompanyModel GetAbout();
    }
}
