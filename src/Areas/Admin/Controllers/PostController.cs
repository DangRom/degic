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
    public class PostController: Controller{
      private readonly ICategoryRepository _categoryRepo;
      private readonly IPostRepository _postRepository;

      private List<SelectListItem> GetCategorys(){
         var categorys = _categoryRepo.GetAllCategoryForPost();
         var selectlist = categorys.Select(s => new SelectListItem{
            Value = s.Id.ToString(),
            Text = s.Name
         }).ToList();
         selectlist.Insert(0, new SelectListItem{Value = "", Text = "--chon chu de--"});
         return selectlist;
      }

      public PostController(ICategoryRepository categoryRepo, IPostRepository postRepositor){
         _categoryRepo = categoryRepo;
         _postRepository = postRepositor;
      }

      public async Task<IActionResult> Index(){
         try{
            var postModels = await Task.Factory.StartNew(() => _postRepository.GetAllPost());
            var posts = postModels.Select(p => new PostViewModel{
               Id = p.Id,
               Name = p.Name,
               CategoryName = p.CategoryName,
               Activated = p.Activated,
               HomePage = p.HomePage
            }).ToList();
            return View(posts);
         }catch(Exception ex){
            ModelState.AddModelError("", ex.Message);
            return View();
         }
      }

      public async Task<IActionResult> New(){
         try{
            ViewBag.ListCategory = await Task.Factory.StartNew(() => GetCategorys());
            return View();
         }catch(Exception ex){
            ModelState.AddModelError("", ex.Message);
            return View();
         }
      }

      [HttpPost]
      public async Task<IActionResult> New(PostViewModel post){
         try{
            ViewBag.ListCategory = await Task.Factory.StartNew(() => GetCategorys());
            if(ModelState.IsValid){
               if(!await Task.Factory.StartNew(() => _postRepository.CheckAlias(post.Alias))){
                  var postmodel = new PostModel(){
                     Name = post.Name,
                     Alias = post.Alias,
                     Image = post.Image,
                     ShortDescriptions = post.ShortDescription,
                     Activated = post.Activated,
                     HomePage = post.HomePage,
                     CreateDate = DateTime.Now,
                     CategoryId = post.CategoryId,
                     Content = post.Content
                  };
                  await Task.Factory.StartNew(() => _postRepository.Insert(postmodel));
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
            ViewBag.ListCategory = await Task.Factory.StartNew(() => GetCategorys());
            var postmodel = _postRepository.GetPostById(id);
            if(postmodel == null){
               ModelState.AddModelError("", "không tìm thấy dữ liệu");
               return View();
            }
            var post = new PostViewModel(){
               Id = postmodel.Id,
               Name = postmodel.Name,
               Alias = postmodel.Alias,
               Image = postmodel.Image,
               ShortDescription = postmodel.ShortDescriptions,
               Activated = postmodel.Activated,
               HomePage = postmodel.HomePage,
               CategoryId = postmodel.CategoryId,
               Content = postmodel.Content
            };
            return View(post);
         }catch(Exception ex){
            ModelState.AddModelError("", ex.Message);
            return View();
         }
      }

      [HttpPost]
      public async Task<IActionResult> Update(PostViewModel post){
         try{
            ViewBag.ListCategory = await Task.Factory.StartNew(() => GetCategorys());
            if(ModelState.IsValid){
               var postmodel = new PostModel(){
                  Id = post.Id,
                  Name = post.Name,
                  Alias = post.Alias,
                  Image = post.Image,
                  ShortDescriptions = post.ShortDescription,
                  Activated = post.Activated,
                  HomePage = post.HomePage,
                  CategoryId = post.CategoryId,
                  Content = post.Content
               };
               await Task.Factory.StartNew(() => _postRepository.Update(postmodel));
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
            _postRepository.Delete(id);
            return Json("OK");
         }catch(Exception ex){
            return Json(ex.Message);
         }
      }
    }
}