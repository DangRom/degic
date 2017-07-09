using System.Linq;
using System.Threading.Tasks;
using DegicEducation.Models;
using DegicEducation.Services.IRepository;
using Microsoft.AspNetCore.Mvc;

namespace DegicEducation.ViewComponents{
   [ViewComponent(Name = "Menu")]
    public class MenuViewComponent : ViewComponent{
       private readonly ICategoryRepository _cateRepo;
       private readonly IPostRepository _postRepo;
       private readonly ICourseRepository _courseRepo;

       public MenuViewComponent(ICategoryRepository cateRepo, IPostRepository postRepo,
         ICourseRepository courseRepo){
          _cateRepo = cateRepo;
          _postRepo = postRepo;
          _courseRepo = courseRepo;
       }

       public async Task<IViewComponentResult> InvokeAsync(){
          try{
               var menuheadmodel = await Task.Factory.StartNew(() => _cateRepo.GetCategoryForMenuHead());
               var menuhead = menuheadmodel.Select(h => new MenuHeadViewModel{
                  Id = h.Id,
                  Name = h.Name,
                  Alias = h.Alias,
                  ClassType = h.ClassType
               }).ToList();

               var menulinemodel = await Task.Factory.StartNew(() => _postRepo.GetMenuLine());
               var menuline = menulinemodel.Select(l => new MenuLineViewModel{
                  HeadId = l.CategoryId,
                  Name = l.Name,
                  Alias = l.Alias
               }).ToList();

               var classtype = menuheadmodel.FirstOrDefault(c => c.ClassType == true);
               if(classtype != null){
                  var courseid = classtype.Id;
                  var coursemodels = _courseRepo.GetAllCourseForMenuLine();
                  foreach(var c in coursemodels){
                      var course = new MenuLineViewModel(){
                        HeadId = courseid,
                        Name = c.Name,
                        Alias = c.Alias
                      };
                      menuline.Add(course);  
                  }
               }

               var menu = new MenuViewModel();
               menu.MenuHead = menuhead;
               menu.MenuLine = menuline;
               return View(menu);
          }catch{throw;}
       }
    }
}