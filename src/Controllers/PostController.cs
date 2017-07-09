using DegicEducation.Services.IRepository;
using Microsoft.AspNetCore.Mvc;

namespace DegicEducation.Controllers{
    public class PostController : Controller{
       private readonly IPostRepository _postRepo;
       
       public PostController(IPostRepository postRepo){
          _postRepo = postRepo;
       }
    }
}