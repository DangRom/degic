using System;
using System.Linq;
using System.Threading.Tasks;
using DegicEducation.Models;
using DegicEducation.Services.IRepository;
using Microsoft.AspNetCore.Mvc;

namespace DegicEducation.Controllers{
    public class PostController : Controller{
       private readonly IPostRepository _postRepo;
       private readonly ICategoryRepository _cateRepo;
       
       public PostController(IPostRepository postRepo, ICategoryRepository cateRepo){
          _postRepo = postRepo;
          _cateRepo = cateRepo;
       }

       [Route("/danh-sach/{alias}")]
       public async Task<IActionResult> GetAll(string alias){
           try{
                var postmodels = await Task.Factory.StartNew(() => _postRepo.GetAllOfCategory(alias));
                var posts = postmodels.Select(p => new PostViewModel{
                    Name = p.Name,
                    Alias = p.Alias,
                    Image = p.Image,
                    ShortDescriptions = p.ShortDescriptions,
                    CreateDate = p.CreateDate,
                    CreateDay = p.CreateDate.Day.ToString(),
                    CreateMonth = p.CreateDate.Month.ToString()
                }).ToList();
                ViewBag.Backlink = GetBacklinkForList(alias);
                return View(posts);
           }catch{return View("Error");}
       }

       [Route("/bai-viet/{alias}")]
       public async Task<IActionResult> Detail(string alias){
           try{
                var postmodel = await Task.Factory.StartNew(() => _postRepo.GetPostDetail(alias));
                var post = new PostViewModel(){
                    Name = postmodel.Name,
                    Alias = postmodel.Alias,
                    Image = postmodel.Image,
                    ShortDescriptions = postmodel.ShortDescriptions,
                    CreateDate = postmodel.CreateDate,
                    CreateDay = postmodel.CreateDate.Day.ToString(),
                    CreateMonth = postmodel.CreateDate.Month.ToString(),
                    Content = postmodel.Content
                };
                ViewBag.Backlink = GetBacklinkForDetail(alias);
                return View(post);
           }catch{return View("Error");}
       }

       [Route("/gioi-thieu/{alias}")]
       public async Task<IActionResult> CategoryContent(string alias){
            try{
                var categorymodel = await Task.Factory.StartNew(() => _cateRepo.GetContentByAlias(alias));
                var category = new CategoryViewModel(){
                    Name = categorymodel.Name,
                    Alias = categorymodel.Alias,
                    Content = categorymodel.Content
                };
                return View(category);
            }catch{return View("Error");}
       }

       private BacklinkViewModel GetBacklinkForList(string alias){
           var category = Commons.SystemVariable.Categorys.FirstOrDefault(p => p.Alias == alias);
           var backlink = new BacklinkViewModel(){
               Name = category.Name,
               Alias = category.Alias
           };
           return backlink;
       }

       private BacklinkViewModel GetBacklinkForDetail(string alias){
           var cateid = Commons.SystemVariable.Posts.FirstOrDefault(p => p.Alias == alias).HeadId;
           var category = Commons.SystemVariable.Categorys.FirstOrDefault(c => c.Id == cateid);
           var backlink = new BacklinkViewModel(){
               Name = category.Name,
               Alias = category.Alias
           };
           return backlink;
       }
    }
}