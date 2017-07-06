using System.Collections.Generic;
using DegicEducation.Services.InfactStructure;
using DegicEducation.Services.Models;

namespace DegicEducation.Services.IRepository{
    public interface IUserRepository : IRepositoriesBase<UserModel>{
       void Insert(UserModel model);
       void Update(UserModel model);
       UserModel GetUserByUserName(string username);
       IEnumerable<UserModel> GetAllUser();
       void Delete(string username);
       bool CheckUsername(string username);
    }
}