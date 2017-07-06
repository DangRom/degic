using System.Collections.Generic;
using DegicEducation.Services.IRepository;
using Microsoft.AspNetCore.Mvc;
using DegicEducation.Areas.Admin.Models;
using System;
using System.Linq;
using System.Threading.Tasks;
using DegicEducation.Services.Models;
using Microsoft.AspNetCore.Authorization;

namespace DegicEducation.Areas.Admin.Controllers{

    [Area("Admin")]
    [Authorize]
    public class SlideController : Controller{
        private readonly ISlideRepository _slideRepo;
        public SlideController(ISlideRepository slideRepo) => _slideRepo = slideRepo;

        public async Task<IActionResult> Index(){
            try{
                var slidemodels = await Task.Factory.StartNew(() => _slideRepo.GetAllSlide());
                var slides = slidemodels.Select(s => new SlideViewModel{
                    Id = s.Id,
                    Name = s.Name,
                    ButtonViewer = s.ButtonViewer,
                    Activated = s.Activated
                }).ToList();
                return View(slides);
            }catch(Exception ex){
                ModelState.AddModelError("", ex.Message);
                return View();
            }
        }

        public IActionResult New(){
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> New(SlideViewModel slide){
            try{
                if(ModelState.IsValid){
                    if(!_slideRepo.CheckAlias(slide.Alias)){
                        var slidemodel = new SlideModel{
                            Name = slide.Name,
                            Alias = slide.Alias,
                            Image = slide.Image,
                            ButtonViewer = slide.ButtonViewer,
                            LinkViewer = slide.LinkViewer,
                            Activated = slide.Activated
                        };
                        await Task.Factory.StartNew(() => _slideRepo.Insert(slidemodel));
                        return RedirectToAction("New");
                    }
                    ModelState.AddModelError("", "hay thu ten khac hoac kiem tra lai dinh danh");
                }
                return View();
            }catch(Exception ex){
                ModelState.AddModelError("", ex.Message);
                return View();
            }
        }

        public async Task<IActionResult> Update(int id){
            try{
                var slidemodel = await Task.Factory.StartNew(() => _slideRepo.GetSlideById(id));
                if(slidemodel == null){
                    ModelState.AddModelError("", "khong tim thay du lieu");
                    return View();
                }
                var slide = new SlideViewModel(){
                    Id = slidemodel.Id,
                    Name = slidemodel.Name,
                    Alias = slidemodel.Alias,
                    Image = slidemodel.Image,
                    ButtonViewer = slidemodel.ButtonViewer,
                    LinkViewer = slidemodel.LinkViewer,
                    Activated = slidemodel.Activated
                };
                return View(slide);
            }catch(Exception ex){
                ModelState.AddModelError("", ex.Message);
                return View();
            }
        }

        [HttpPost]
        public async Task<IActionResult> Update(SlideViewModel slide){
            try{
                if(ModelState.IsValid){
                    var slidemodel = new SlideModel(){
                        Id = slide.Id,
                        Name = slide.Name,
                        Alias = slide.Alias,
                        Image = slide.Image,
                        ButtonViewer = slide.ButtonViewer,
                        LinkViewer = slide.LinkViewer,
                        Activated = slide.Activated
                    };
                    await Task.Factory.StartNew(() => _slideRepo.Update(slidemodel));
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
                _slideRepo.Delete(id);
                return Json("OK");
            }catch(Exception ex){
                return Json(ex.Message);
            }
        }
    }
}