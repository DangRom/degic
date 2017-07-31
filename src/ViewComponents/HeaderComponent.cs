using System.Threading.Tasks;
using DegicEducation.Models;
using DegicEducation.Services.IRepository;
using Microsoft.AspNetCore.Mvc;

namespace DegicEducation.ViewComponents{
   [ViewComponent(Name = "Header")]
    public class HeaderViewComponent : ViewComponent{
         private readonly ICompanyRepository _headRepo;
         public HeaderViewComponent(ICompanyRepository headRepo) => _headRepo = headRepo;

         public async Task<IViewComponentResult> InvokeAsync(){
            try{
               var headmodel = await Task.Factory.StartNew(() => _headRepo.GetCompanyForHead());
               var head = new CompanyViewModel(){
                  Facebook = headmodel.Facebook,
                  Google = headmodel.Google,
                  Tweeter = headmodel.Tweeter,
                  Hotline = headmodel.Hotline,
                  WorkTime = headmodel.WorkTime
               };
               return View(head);
            }catch{throw;}
         }
    }
}