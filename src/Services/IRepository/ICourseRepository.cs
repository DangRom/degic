using System.Collections.Generic;
using DegicEducation.Services.InfactStructure;
using DegicEducation.Services.Models;

namespace DegicEducation.Services.IRepository{
    public interface ICourseRepository : IRepositoriesBase<CourseModel>{
        void Insert(CourseModel model);
        void Update(CourseModel model);
        void Delete(int id);
        bool CheckAlias(string alias);
        CourseModel GetCourseById(int id);
        IEnumerable<CourseModel> GetAllCourse();
        IEnumerable<CourseModel> GetAllCourseForFeedback();
        IEnumerable<CourseModel> GetAllCourseForHomePage();
        IEnumerable<CourseModel> GetAllCourseForMenuLine();
        IEnumerable<CourseModel> GetForFooter();
        IEnumerable<CourseModel> GetAllCourseOfClass();
        CourseModel GetCourseDetail(string alias);
        IEnumerable<CourseModel> GetNewestCourse();
    }
}