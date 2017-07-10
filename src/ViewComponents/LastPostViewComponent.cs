using System;
using System.Linq;
using System.Threading.Tasks;
using DegicEducation.Models;
using DegicEducation.Services.IRepository;
using Microsoft.AspNetCore.Mvc;

namespace DegicEducation.ViewComponents{
   [ViewComponent(Name = "LastPost")]
    public class LastPostViewComponent : ViewComponent{
       private readonly IPostRepository _postRepo;
       public LastPostViewComponent(IPostRepository postRepo) => _postRepo = postRepo;

       public async Task<IViewComponentResult> InvokeAsync(){
          try{
               var postmodels = await Task.Factory.StartNew(() => _postRepo.GetLastPost());
               var posts = postmodels.Select(p => new PostViewModel{
                  Name = p.Name,
                  Alias = p.Alias,
                  Image = p.Image,
                  ShortDescriptions = p.ShortDescriptions
               }).ToList();
               return View(posts);
          }catch{return View("Error");}
       }
    }
}