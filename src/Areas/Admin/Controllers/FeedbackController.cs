using System.Collections.Generic;
using DegicEducation.Areas.Admin.Models;
using DegicEducation.Services.IRepository;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;

namespace DegicEducation.Areas.Admin.Controllers{
    [Area("Admin")]
    public class FeedbackController : Controller{
        private readonly ICourseRepository _courseRepo;
        private readonly IFeedbackRepository _feedbackRepo;
        private List<SelectListItem> GetCourses(){
            var course = new List<SelectListItem>();
            course.Insert(0, new SelectListItem{Value = "", Text = "--chon khoa hoc--"});
            return course;
        }

        public FeedbackController(ICourseRepository courseRepo, IFeedbackRepository feedbackRepo){
            _courseRepo = courseRepo;
            _feedbackRepo = feedbackRepo;
        }

        public IActionResult Index(){
            return View(new List<FeedbackViewModel>());
        }

        public IActionResult New(){
            ViewBag.ListCourse = GetCourses();
            return View(new FeedbackViewModel());
        }

        public IActionResult Update(){
            ViewBag.ListCourse = GetCourses();
            return View(new FeedbackViewModel());
        }
    }
}