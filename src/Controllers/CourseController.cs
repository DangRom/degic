using System;
using System.Linq;
using System.Threading.Tasks;
using DegicEducation.Models;
using DegicEducation.Services.IRepository;
using Microsoft.AspNetCore.Mvc;

namespace DegicEducation.Controllers{
    public class CourseController : Controller{
       private readonly ICourseRepository _courseRepo;

       public CourseController(ICourseRepository courseRepo){
          _courseRepo = courseRepo;
       }

       [Route("/khoa-hoc")]
       public async Task<IActionResult> GetAll(){
          try{
               var coursemodels = await Task.Factory.StartNew(() => _courseRepo.GetAllCourseOfClass());
                var courses = coursemodels.Select(c => new CourseViewModel{
                    Name = c.Name,
                    Alias = c.Alias,
                    Image = c.Image,
                    ShortDesciptions = c.ShortDesciptions,
                    Price = c.Price,
                    Status = c.Status
                }).ToList();
                return View(courses);
          }catch{return View("Error");}
       }

       [Route("/khoa-hoc/{alias}")]
       public async Task<IActionResult> Detail(string alias){
            try{
                  var coursemodel = await Task.Factory.StartNew(() => _courseRepo.GetCourseDetail(alias));
                  var course = new CourseViewModel(){
                     Name = coursemodel.Name,
                     Alias = coursemodel.Alias,
                     Image = coursemodel.Image,
                     Price = coursemodel.Price,
                     Status = coursemodel.Status,
                     Content = coursemodel.Content
                  };
                  return View(course);
            }catch{return View("Error");}
       }
    }
}