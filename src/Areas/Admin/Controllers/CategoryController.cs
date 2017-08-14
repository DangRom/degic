using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using DegicEducation.Areas.Admin.Models;
using DegicEducation.Services.IRepository;
using DegicEducation.Services.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;

namespace DegicEducation.Areas.Admin.Controllers{
   [Area("Admin")]
   [Authorize]
    public class CategoryController : Controller{
       private readonly ICategoryRepository _categoryRepo;
       public CategoryController(ICategoryRepository categoryRepo) => _categoryRepo = categoryRepo;

       private List<SelectListItem> GetListParrent(){
          var parrents = _categoryRepo.GetParrents();
          var listitem = parrents.Select(l => new SelectListItem{
              Value = l.Id.ToString(),
              Text = l.Name
          }).ToList();
          listitem.Insert(0, new SelectListItem{Value = "0", Text = "---hãy chọn menu cha---"});
          return listitem;
       }

       public async Task<IActionResult> Index(){
          try{
            var categoriesModel = await Task.Factory.StartNew(() => _categoryRepo.GetAllCategory());
            var categories = categoriesModel.Select(c => new CategoryViewModel{
               Id = c.Id,
               Name = c.Name,
               Alias = c.Alias,
               Image = c.Image,
               Description = c.Descriptions,
               Activated = c.Activated,
               ClassType = c.ClassType,
               Content = c.Content,
               Orders = c.Orders,
               ParrentId = c.ParrentId
            }).ToList();
            return View(categories);
          }catch(Exception ex){
             ModelState.AddModelError("",ex.Message);
             return View();
          }
       }

       public async Task<IActionResult> New(){
         try{
            @ViewBag.ListParrent = await Task.Factory.StartNew(() => GetListParrent());
            return View();
         }catch(Exception ex){
            ModelState.AddModelError("", ex.Message);
            return View();
         }
       }

       [HttpPost]
       public async Task<IActionResult> New(CategoryViewModel category){
          try{
            @ViewBag.ListParrent = await Task.Factory.StartNew(() => GetListParrent());
            if(ModelState.IsValid){
               if(!await Task.Factory.StartNew(() => _categoryRepo.CheckAlias(category.Alias))){
                  var categoryModel = new CategoryModel(){
                     Name = category.Name,
                     Alias = category.Alias,
                     Image = category.Image,
                     Descriptions = category.Description,
                     Activated = category.Activated,
                     ClassType = category.ClassType,
                     Orders = category.Orders,
                     Content = category.Content,
                     ParrentId = category.ParrentId
                  };
                  await Task.Factory.StartNew(() => _categoryRepo.Insert(categoryModel));
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
              @ViewBag.ListParrent = await Task.Factory.StartNew(() => GetListParrent());
              var categoryModel = await Task.Factory.StartNew(() => _categoryRepo.GetCategoryById(id));
              if(categoryModel == null){
                ModelState.AddModelError("", "không tìm thấy dữ liệu");
                return View();
              }
              var category = new CategoryViewModel(){
                Id = categoryModel.Id,
                Name = categoryModel.Name,
                Alias = categoryModel.Alias,
                Image = categoryModel.Image,
                Description = categoryModel.Descriptions,
                Activated = categoryModel.Activated,
                ClassType = categoryModel.ClassType,
                Orders = categoryModel.Orders,
                Content = categoryModel.Content,
                ParrentId = categoryModel.ParrentId
              };
              return View(category);
          }catch(Exception ex){
             ModelState.AddModelError("", ex.Message);
             return View();
          }
       }

       [HttpPost]
       public async Task<IActionResult> Update(CategoryViewModel category){
          try{
            @ViewBag.ListParrent = await Task.Factory.StartNew(() => GetListParrent());
            if(ModelState.IsValid){
               var categoryModel = new CategoryModel(){
                  Id = category.Id,
                  Name = category.Name,
                  Alias = category.Alias,
                  Image = category.Image,
                  Descriptions = category.Description,
                  Activated = category.Activated,
                  ClassType = category.ClassType,
                  Orders = category.Orders,
                  Content = category.Content,
                  ParrentId = category.ParrentId
               };
               await Task.Factory.StartNew(() => _categoryRepo.Update(categoryModel));
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
            _categoryRepo.Delete(id);
            return Json("OK");
          }catch(Exception ex){
             return Json(ex.Message);
          }
       }
    }
}