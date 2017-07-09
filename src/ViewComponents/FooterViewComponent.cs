using System.Linq;
using System.Threading.Tasks;
using DegicEducation.Models;
using DegicEducation.Services.IRepository;
using Microsoft.AspNetCore.Mvc;

namespace DegicEducation.ViewComponents{
   [ViewComponent(Name = "Footer")]
    public class FooterViewComponent : ViewComponent{
       private readonly ICompanyRepository _companyRepo;
       private readonly IPostRepository _postRepo;
       private readonly ICourseRepository _courseRepo;

       public FooterViewComponent(ICompanyRepository companyRepo, IPostRepository postRepo,
         ICourseRepository courseRepo){
            _companyRepo = companyRepo;
            _postRepo = postRepo;
            _courseRepo = courseRepo;
         }

      public async Task<IViewComponentResult> InvokeAsync(){
         try{
            var postmodels = await Task.Factory.StartNew(() => _postRepo.GetForFooter());
            var posts = postmodels.Select(p => new MenuLineViewModel{
               Name = p.Name,
               Alias = p.Alias
            }).ToList();

            var companymodel = await Task.Factory.StartNew(() => _companyRepo.GetCompanyForFooter());
            var company = new CompanyViewModel(){
               Address = companymodel.Address,
               Email = companymodel.Email,
               TaxCode = companymodel.TaxCode,
               Phone = companymodel.Phone,
               Hotline = companymodel.Hotline,
               Facebook = companymodel.Facebook,
               Google = companymodel.Google,
               Tweeter = companymodel.Tweeter
            };

            var coursemodels = await Task.Factory.StartNew(() => _courseRepo.GetForFooter());
            var courses = coursemodels.Select(c => new MenuLineViewModel{
               Name = c.Name,
               Alias = c.Alias
            }).ToList();

            var footer = new FooterViewModel(){
               Company = company,
               LastPost = posts,
               Course = courses
            };
            return View(footer);
         }catch{throw;}
      }
    }
}