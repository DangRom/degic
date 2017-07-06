using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using DegicEducation.Areas.Admin.Models;
using DegicEducation.Services.IRepository;
using DegicEducation.Services.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;

namespace DegicEducation.Areas.Admin.Controllers{
    [Area("Admin")]
    public class FeedbackController : Controller{
        private readonly ICourseRepository _courseRepo;
        private readonly IFeedbackRepository _feedbackRepo;
        private List<SelectListItem> GetCourses(){
            var coursemodels = _courseRepo.GetAllCourseForFeedback();
            var course = coursemodels.Select(s => new SelectListItem{
                Value = s.Id.ToString(),
                Text = s.Name
            }).ToList();
            course.Insert(0, new SelectListItem{Value = "", Text = "--chon khoa hoc--"});
            return course;
        }

        public FeedbackController(ICourseRepository courseRepo, IFeedbackRepository feedbackRepo){
            _courseRepo = courseRepo;
            _feedbackRepo = feedbackRepo;
        }

        public async Task<IActionResult> Index(){
            try{
                var feedmodels = await Task.Factory.StartNew(() => _feedbackRepo.GetAllFeedbank());
                var feeds = feedmodels.Select(f => new FeedbackViewModel{
                    Id = f.Id,
                    FullName = f.FullName,
                    CourseName = f.CourseName
                }).ToList();
                return View(feeds);
            }catch(Exception ex){
                ModelState.AddModelError("", ex.Message);
                return View();
            }
        }

        public async Task<IActionResult> New(){
            try{
                ViewBag.ListCourse = await Task.Factory.StartNew(() => GetCourses());
                return View();
            }catch(Exception ex){
                ModelState.AddModelError("", ex.Message);
                return View();
            }
        }

        [HttpPost]
        public async Task<IActionResult> New(FeedbackViewModel feed){
            ViewBag.ListCourse = await Task.Factory.StartNew(() => GetCourses());
            try{
                if(ModelState.IsValid){
                    var feedmodel = new FeedbackModel(){
                        FullName = feed.FullName,
                        Avatar = feed.Avatar,
                        Content = feed.Content,
                        CreateDate = DateTime.Now,
                        CourseId = feed.CourseId
                    };
                    _feedbackRepo.Insert(feedmodel);
                    return RedirectToAction("New");
                }
                return View();
            }catch(Exception ex){
                ModelState.AddModelError("", ex.Message);
                return View();
            }
        }

        public async Task<IActionResult> Update(int id){
            try{
                ViewBag.ListCourse = await Task.Factory.StartNew(() => GetCourses());
                var feedmodel = _feedbackRepo.GetFeedbackById(id);
                if(feedmodel == null){
                    ModelState.AddModelError("","khong tim thay du lieu");
                    return View();
                }
                var feed = new FeedbackViewModel(){
                    Id = feedmodel.Id,
                    FullName = feedmodel.FullName,
                    Avatar = feedmodel.Avatar,
                    CourseId = feedmodel.CourseId,
                    Content = feedmodel.Content
                };
                return View(feed);
            }catch(Exception ex){
                ModelState.AddModelError("", ex.Message);
                return View();
            }         
        }

        [HttpPost]
        public async Task<IActionResult> Update(FeedbackViewModel feed){
            try{
                if(ModelState.IsValid){
                    var feedmodel = new FeedbackModel(){
                        Id = feed.Id,
                        FullName = feed.FullName,
                        Avatar = feed.Avatar,
                        CourseId = feed.CourseId,
                        Content = feed.Content
                    };
                    await Task.Factory.StartNew(() => _feedbackRepo.Update(feedmodel));
                    return RedirectToAction("Index");
                }
                return View();
            }catch(Exception ex){
                ModelState.AddModelError("", ex.Message);
                return View();
            }
        }

        [HttpDelete]
        public JsonResult Delete(int id){
            try{
                _feedbackRepo.Delete(id);
                return Json("OK");
            }catch(Exception ex){
                return Json(ex.Message);
            }
        }
    }
}