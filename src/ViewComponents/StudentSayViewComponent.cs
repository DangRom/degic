using System.Linq;
using System.Threading.Tasks;
using DegicEducation.Models;
using DegicEducation.Services.IRepository;
using Microsoft.AspNetCore.Mvc;

namespace DegicEducation.ViewComponents{
   [ViewComponent(Name = "StudentSay")]
    public class StudentSayViewComponent : ViewComponent{
       private readonly IFeedbackRepository _feedRepo;
       public StudentSayViewComponent(IFeedbackRepository feedRepo) => _feedRepo = feedRepo;

       public async Task<IViewComponentResult> InvokeAsync(){
            try{
               var feedmodels = await Task.Factory.StartNew(() => _feedRepo.GetAllFeedbackForHomePage());
               var feeds = feedmodels.Select(f => new FeedbackViewModel{
                  FullName = f.FullName,
                  Avatar = f.Avatar,
                  Content = f.Content
               }).ToList();
               return View(feeds);
            }catch{throw;}
       }
    }
}