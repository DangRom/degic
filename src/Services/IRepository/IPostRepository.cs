using System.Collections.Generic;
using DegicEducation.Services.InfactStructure;
using DegicEducation.Services.Models;

namespace DegicEducation.Services.IRepository{
    public interface IPostRepository : IRepositoriesBase<PostModel>{
       bool CheckAlias(string alias);
       void Insert(PostModel model);
       void Update(PostModel model);
       void Delete(int id);
       PostModel GetPostById(int id);
       IEnumerable<PostModel> GetAllPost();
       IEnumerable<PostModel> GetPostForHomePage();
       IEnumerable<PostModel> GetMenuLine();
       IEnumerable<PostModel> GetForFooter();
    }
}