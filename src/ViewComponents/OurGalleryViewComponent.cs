using System.Linq;
using System.Threading.Tasks;
using DegicEducation.Models;
using DegicEducation.Services.IRepository;
using Microsoft.AspNetCore.Mvc;

namespace DegicEducation.ViewComponents{
   [ViewComponent(Name = "OurGallery")]
    public class OurGalleryViewComponent : ViewComponent{
       private readonly IImageRepository _galleryRepo;

       public OurGalleryViewComponent(IImageRepository galleryRepo) => _galleryRepo = galleryRepo;

       public async Task<IViewComponentResult> InvokeAsync(){
          try{
               var gallerymodels = await Task.Factory.StartNew(() => _galleryRepo.GetAllImageForHomePage());
               var gallerys = gallerymodels.Select(g => new GalleryViewModel{
                  Name = g.Name,
                  Image = g.Image
               }).ToList();
               ViewBag.Portfolios = gallerys.GroupBy(p => p.Name).Select(v => v.First()).ToList();
               return View(gallerys);
          }catch{throw;}
       }
    }
}