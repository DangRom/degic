using System;
using System.Linq;
using System.Threading.Tasks;
using DegicEducation.Models;
using DegicEducation.Services.IRepository;
using Microsoft.AspNetCore.Mvc;

namespace DegicEducation.Controllers{
    public class PostController : Controller{
       private readonly IPostRepository _postRepo;
       
       public PostController(IPostRepository postRepo){
          _postRepo = postRepo;
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
                return View(posts);
           }catch(Exception ex){
               return View("Error");
           }
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
                return View(post);
           }catch(Exception ex){
               return View("Error");
           }
       }
    }
}