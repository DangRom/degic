using System;
using System.Collections.Generic;
using DegicEducation.Services.InfactStructure;
using DegicEducation.Services.IRepository;
using DegicEducation.Services.Models;
using System.Data;
using Dapper;

namespace DegicEducation.Services.Repository{
    public class CourseRepository : RepositoriesBase<CourseModel>, ICourseRepository
    {
        public bool CheckName(string name)
        {
            var para = new DynamicParameters();
            para.Add("pName", name, DbType.String, ParameterDirection.Input);
            return CheckRecord("findCourseByName", para);
        }

        public void Delete(int id)
        {
            var para = new DynamicParameters();
            para.Add("pId", id, DbType.Int32, ParameterDirection.Input);
            Execute("deleteCourse", para);
        }

        public IEnumerable<CourseModel> GetAllCourse()
        {
            return GetAll("getAllCourse", null);
        }

        public CourseModel GetCourseById(int id)
        {
            var para = new DynamicParameters();
            para.Add("pId", id, DbType.Int32, ParameterDirection.Input);
            return GetById("getCourseById", para);
        }

        public void Insert(CourseModel model)
        {
            var para = GetParams(model);
            Execute("insertCourse", para);
        }

        public void Update(CourseModel model)
        {
            var para = GetParams(model);
            para.Add("pId", model.Id, DbType.Int32, ParameterDirection.Input);
            Execute("updateCourse", para);
        }

        public DynamicParameters GetParams(CourseModel model){
            var para = new DynamicParameters();
            para.Add("pName", model.Name, DbType.String, ParameterDirection.Input);
            para.Add("pAlias", model.Alias, DbType.String, ParameterDirection.Input);
            para.Add("pImage", model.Image, DbType.String, ParameterDirection.Input);
            para.Add("pStatus", model.Status, DbType.Boolean, ParameterDirection.Input);
            para.Add("pShortDescription", model.ShortDescription, DbType.String, ParameterDirection.Input);
            para.Add("pContent", model.Content, DbType.String, ParameterDirection.Input);
            para.Add("pActivated", model.Activated, DbType.Boolean, ParameterDirection.Input);
            return para;
        }
    }
}