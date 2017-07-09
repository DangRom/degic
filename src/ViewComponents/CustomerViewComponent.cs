using System.Linq;
using System.Threading.Tasks;
using DegicEducation.Models;
using DegicEducation.Services.IRepository;
using Microsoft.AspNetCore.Mvc;

namespace DegicEducation.ViewComponents{
   [ViewComponent(Name = "Customer")]
    public class CustomerViewComponent : ViewComponent{
       private readonly IImageRepository _customerRepo;
       public CustomerViewComponent(IImageRepository customerRepo) => _customerRepo = customerRepo;

       public async Task<IViewComponentResult> InvokeAsync(){
          try{
               var customermodel = await Task.Factory.StartNew(() => _customerRepo.GetAllCustomerForHomePage());
               var customers = customermodel.Select(c => new CustomerViewModel{
                  Name = c.Name,
                  Image = c.Image
               }).ToList();
               return View(customers);
          }catch{throw;}
       }
    }
}