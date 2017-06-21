using System.Collections.Generic;
using DegicEducation.Services.InfactStructure;
using DegicEducation.Services.Models;

namespace DegicEducation.Services.IRepository{
    public interface ISlideRepository : IRepositoriesBase<SlideModel>{
        void Insert(SlideModel model);
        void Update(SlideModel model);
        void Delete(int id);
        bool CheckName(string name);
        SlideModel GetSlideById(int id);
        IEnumerable<SlideModel> GetAllSlide();
    }
}