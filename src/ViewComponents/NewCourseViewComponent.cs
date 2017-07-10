using System;
using System.Linq;
using System.Threading.Tasks;
using DegicEducation.Models;
using DegicEducation.Services.IRepository;
using Microsoft.AspNetCore.Mvc;

namespace DegicEducation.ViewComponents{
   [ViewComponent(Name = "NewCourse")]
    public class NewCourseViewComponent : ViewComponent{
       private readonly ICourseRepository _courseRepo;
       public NewCourseViewComponent(ICourseRepository courseRepo) => _courseRepo = courseRepo;

       public async Task<IViewComponentResult> InvokeAsync(){
          try{
               var coursemodels = await Task.Factory.StartNew(() => _courseRepo.GetNewestCourse());
               var courses = coursemodels.Select(c => new CourseViewModel{
                  Name = c.Name,
                  Alias = c.Alias,
                  Image = c.Image,
                  ShortDesciptions = c.ShortDesciptions
               }).ToList();
               return View(courses);
          }catch(Exception ex){
             throw;
          }
       }
    }
}