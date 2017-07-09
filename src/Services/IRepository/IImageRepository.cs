using System.Collections.Generic;
using DegicEducation.Services.InfactStructure;
using DegicEducation.Services.Models;

namespace DegicEducation.Services.IRepository{
    public interface IImageRepository: IRepositoriesBase<ImageModel>{
       void Insert(ImageModel model);
       void Update(ImageModel model);
       void Delete(int id);
       ImageModel GetImageById(int id);
       IEnumerable<ImageModel> GetAllImage();
       IEnumerable<ImageModel> GetAllImageForHomePage();
       IEnumerable<ImageModel> GetAllCustomerForHomePage();
    }
}