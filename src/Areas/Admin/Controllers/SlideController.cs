using System.Collections.Generic;
using DegicEducation.Services.IRepository;
using Microsoft.AspNetCore.Mvc;
using DegicEducation.Areas.Admin.Models;

namespace DegicEducation.Areas.Admin.Controllers{

    [Area("Admin")]
    public class SlideController : Controller{
        private readonly ISlideRepository _slideRepo;
        public SlideController(ISlideRepository slideRepo) => _slideRepo = slideRepo;

        public IActionResult Index(){
            return View(new List<SlideViewModel>());
        }

        public IActionResult New(){
            return View(new SlideViewModel());
        }

        public IActionResult Update(){
            return View(new SlideViewModel());
        }
    }
}