using System;
using System.Linq;
using System.Threading.Tasks;
using DegicEducation.Areas.Admin.Models;
using DegicEducation.Services.IRepository;
using DegicEducation.Services.Models;
using Microsoft.AspNetCore.Mvc;

namespace DegicEducation.Areas.Admin.Controllers{
    [Area("Admin")]
    public class ImageController : Controller{
       private readonly IImageRepository _imageRepo;
       public ImageController(IImageRepository imageRepo) => _imageRepo = imageRepo;

       public async Task<IActionResult> Index(){
          try{
            var imagemodels = await Task.Factory.StartNew(() => _imageRepo.GetAllImage());
            var images = imagemodels.Select(i => new ImageViewModel{
               Id = i.Id,
               iName = i.Name,
               iCustomer = i.Customer,
               iGallery = i.Gallery
            }).ToList();
            return View(images);
          }catch(Exception ex){
             ModelState.AddModelError("", ex.Message);
             return View();
          }
       }

       public IActionResult New(){
         return View();
       }

       [HttpPost]
       public async Task<IActionResult> New(ImageViewModel image){
         try{
            if(ModelState.IsValid){
              var imagemodel = new ImageModel(){
                Name = image.iName,
                Image = image.iImage,
                Customer = image.iCustomer,
                Gallery = image.iGallery
              };
              await Task.Factory.StartNew(() => _imageRepo.Insert(imagemodel));
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
            var imagemodel = await Task.Factory.StartNew(() => _imageRepo.GetImageById(id));
            if(imagemodel == null){
                ModelState.AddModelError("", "không tìm thấy dữ liệu");
                return View();
            }
            var image = new ImageViewModel(){
              Id = imagemodel.Id,
              iName = imagemodel.Name,
              iImage = imagemodel.Image,
              iCustomer = imagemodel.Customer,
              iGallery = imagemodel.Gallery
            };
            return View(image);
         }catch(Exception ex){
            ModelState.AddModelError("", ex.Message);
            return View();
         }
       }

       [HttpPost]
       public async Task<IActionResult> Update(ImageViewModel image){
         try{
            if(ModelState.IsValid){
                var imagemodel = new ImageModel(){
                    Name = image.iName,
                    Image = image.iImage,
                    Customer = image.iCustomer,
                    Gallery = image.iGallery,
                    Id = image.Id
                };
                await Task.Factory.StartNew(() => _imageRepo.Update(imagemodel));
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
            _imageRepo.Delete(id);
            return Json("OK");
         }catch(Exception ex){
            return Json(ex.Message);
         }
       }
    }
}