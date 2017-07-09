using System.Linq;
using System.Threading.Tasks;
using DegicEducation.Models;
using DegicEducation.Services.IRepository;
using Microsoft.AspNetCore.Mvc;

namespace DegicEducation.ViewComponents{
   [ViewComponent(Name = "PostForHome")]
    public class PostForHomeViewComponent : ViewComponent{
       private readonly IPostRepository _postRepo;
       public PostForHomeViewComponent(IPostRepository postRepo) => _postRepo = postRepo;

       public async Task<IViewComponentResult> InvokeAsync(){
          try{
               var postmodel = await Task.Factory.StartNew(() => _postRepo.GetPostForHomePage());
               var posts = postmodel.Select(p => new PostViewModel{
                  Name = p.Name,
                  Alias = p.Alias,
                  ShortDescriptions = p.ShortDescriptions,
                  Image = p.Image,
                  CreateDay = p.CreateDate.Day.ToString(),
                  CreateMonth = p.CreateDate.Month.ToString()
               }).ToList();
               return View(posts);
          }catch{throw;}
       }
    }
}