using DegicEducation.Models;
using DegicEducation.Services.IRepository;
using Microsoft.AspNetCore.Mvc;
using System.Linq;
using System.Threading.Tasks;

namespace DegicEducation.Controllers{
    public class PostController : Controller{
        private readonly IPostRepository _postRepo;
        private readonly ICategoryRepository _cateRepo;
        private readonly ICourseRepository _courseRepo;
       
       public PostController(IPostRepository postRepo, ICategoryRepository cateRepo, ICourseRepository courseRepo){
          _postRepo = postRepo;
            _cateRepo = cateRepo;
            _courseRepo = courseRepo;
       }

        [Route("/danh-sach/{alias}")]
        public async Task<IActionResult> ListPostOfCategory(string alias)
        {
            try
            {
                var postmodels = await Task.Factory.StartNew(() => _postRepo.GetAllOfCategory(alias));
                var posts = postmodels.Select(p => new PostViewModel
                {
                    Name = p.Name,
                    Alias = p.Alias,
                    Image = p.Image,
                    ShortDescriptions = p.ShortDescriptions,
                    CreateDate = p.CreateDate,
                    CreateDay = p.CreateDate.Day.ToString(),
                    CreateMonth = p.CreateDate.Month.ToString()
                }).ToList();
                return View(posts);
            }   
            catch
            {
                return View("Error");
            }
        }

        [Route("/khoa-hoc")]
        public async Task<IActionResult> GetAllCourse()
        {
            try
            {
                var coursemodels = await Task.Factory.StartNew(() => _courseRepo.GetAllCourseOfClass());
                var courses = coursemodels.Select(c => new CourseViewModel
                {
                    Name = c.Name,
                    Alias = c.Alias,
                    Image = c.Image,
                    Status = c.Status,
                    Price = c.Price,
                    ShortDesciptions = c.ShortDesciptions
                }).ToList();
                return View(courses);
            }
            catch
            {
                return View("Error");
            }
        }
    }
}