using System.Collections.Generic;
using DegicEducation.Areas.Admin.Models;
using DegicEducation.Services.IRepository;
using Microsoft.AspNetCore.Mvc;

namespace DegicEducation.Areas.Admin.Controllers{

    [Area("Admin")]
    public class CourseController : Controller{
        private readonly ICourseRepository _courseRepo;
        public CourseController(ICourseRepository courseRepo) => _courseRepo = courseRepo;

        public IActionResult Index(){
            return View(new List<CourseViewModel>());
        }

        public IActionResult New(){
            return View(new CourseViewModel());
        }

        public IActionResult Update(){
            return View(new CourseViewModel());
        }
    }
}