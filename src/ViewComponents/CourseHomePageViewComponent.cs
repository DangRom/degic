using System.Linq;
using System.Threading.Tasks;
using DegicEducation.Areas.Admin.Models;
using DegicEducation.Services.IRepository;
using Microsoft.AspNetCore.Mvc;

namespace DegicEducation.ViewComponents{
    [ViewComponent(Name = "CourseHomePage")]
    public class CourseHomePageViewComponent : ViewComponent{
        private readonly ICourseRepository _courseRepo;

       public CourseHomePageViewComponent(ICourseRepository courseRepo) => _courseRepo = courseRepo;

       public async Task<IViewComponentResult> InvokeAsync(){
           try{
                var coursemodels = await Task.Factory.StartNew(() => _courseRepo.GetAllCourseForHomePage());
                var courses = coursemodels.Select(c => new CourseViewModel{
                    Id = c.Id,
                    Name = c.Name,
                    Alias = c.Alias,
                    Price = c.Price,
                    Image = c.Image,
                    ShortDescription = c.ShortDesciptions
                }).ToList();
                return View(courses);
           }catch{throw;}
       }
    }
}