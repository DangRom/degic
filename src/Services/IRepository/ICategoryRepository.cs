using System.Collections.Generic;
using DegicEducation.Services.InfactStructure;
using DegicEducation.Services.Models;

namespace DegicEducation.Services.IRepository{
    public interface ICategoryRepository: IRepositoriesBase<CategoryModel>{
        void Insert(CategoryModel model);
        void Update(CategoryModel model);
        void Delete(int id);
        bool CheckAlias(string alias);
        CategoryModel GetCategoryById(int id);
        IEnumerable<CategoryModel> GetAllCategory();
    }
}