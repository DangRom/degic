using System.Collections.Generic;
using DegicEducation.Services.InfactStructure;
using DegicEducation.Services.Models;

namespace DegicEducation.Services.IRepository{
    public interface IFeedbackRepository : IRepositoriesBase<FeedbackModel>{
        void Insert(FeedbackModel model);
        void Update(FeedbackModel model);
        void Delete(int id);
        FeedbackModel GetFeedbackById(int id);
        IEnumerable<FeedbackModel> GetAllFeedbank();    
    }
}