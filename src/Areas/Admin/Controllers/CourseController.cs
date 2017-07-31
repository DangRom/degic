using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using DegicEducation.Areas.Admin.Models;
using DegicEducation.Services.IRepository;
using DegicEducation.Services.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace DegicEducation.Areas.Admin.Controllers{

    [Area("Admin")]
    [Authorize]
    public class CourseController : Controller{
        private readonly ICourseRepository _courseRepo;
        public CourseController(ICourseRepository courseRepo) => _courseRepo = courseRepo;

        public async Task<IActionResult> Index(){
            try{
                var coursemodels = await Task.Factory.StartNew(() => _courseRepo.GetAllCourse());
                var courses = coursemodels.Select(c => new CourseViewModel{
                    Id = c.Id,
                    Name = c.Name,
                    Activated = c.Activated,
                    Status = c.Status,
                    Orders = c.Orders
                }).ToList();
                return View(courses);
            }catch(Exception ex){
                ModelState.AddModelError("", ex.Message);
                return View();
            }
        }

        public IActionResult New(){
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> New(CourseViewModel course){
            try{
                if(ModelState.IsValid){
                    if(!_courseRepo.CheckAlias(course.Alias)){
                        var coursemodel = new CourseModel{
                            Name = course.Name,
                            Alias = course.Alias,
                            Image = course.Image,
                            Status = course.Status,
                            ShortDesciptions = course.ShortDescription,
                            Content = course.Content,
                            Activated = course.Activated,
                            Price = course.Price,
                            Orders = course.Orders
                        };
                        await Task.Factory.StartNew(() => _courseRepo.Insert(coursemodel));
                        return RedirectToAction("New");
                    }
                    ModelState.AddModelError("", "hãy thử tên khác hoặc kiểm tra lại định danh");
                }
                return View();
            }catch(Exception ex){
                ModelState.AddModelError("", ex.Message);
                return View();
            }
        }

        public async Task<IActionResult> Update(int id){
            try{
                var coursemodel = await Task.Factory.StartNew(() => _courseRepo.GetCourseById(id));
                if(coursemodel == null){
                    ModelState.AddModelError("", "không tìm thấy dữ liệu");
                    return View();
                }
                var course = new CourseViewModel(){
                    Id = coursemodel.Id,
                    Name = coursemodel.Name,
                    Alias = coursemodel.Alias,
                    Image = coursemodel.Image,
                    Status = coursemodel.Status,
                    ShortDescription = coursemodel.ShortDesciptions,
                    Content = coursemodel.Content,
                    Activated = coursemodel.Activated,
                    Price = coursemodel.Price,
                    Orders = coursemodel.Orders
                };
                return View(course);
            }catch(Exception ex){
                ModelState.AddModelError("", ex.Message);
                return View();
            }
        }

        [HttpPost]
        public async Task<IActionResult> Update(CourseViewModel course){
            try{
                if(ModelState.IsValid){
                    var coursemodel = new CourseModel(){
                        Id = course.Id,
                        Name = course.Name,
                        Alias = course.Alias,
                        Image = course.Image,
                        Status = course.Status,
                        ShortDesciptions = course.ShortDescription,
                        Content = course.Content,
                        Activated = course.Activated,
                        Price = course.Price   ,
                        Orders = course.Orders
                    };
                    await Task.Factory.StartNew(() => _courseRepo.Update(coursemodel));
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
                _courseRepo.Delete(id);
                return Json("OK");
            }catch(Exception ex){
                return Json(ex.Message);
            }
        }
    }
}