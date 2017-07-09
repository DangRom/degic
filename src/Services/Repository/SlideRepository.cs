using System;
using System.Collections.Generic;
using DegicEducation.Services.InfactStructure;
using DegicEducation.Services.IRepository;
using DegicEducation.Services.Models;
using System.Data;
using Dapper;

namespace DegicEducation.Services.Repository{
    public class SlideRepository : RepositoriesBase<SlideModel>, ISlideRepository
    {
        public bool CheckAlias(string alias)
        {
            var para = new DynamicParameters();
            para.Add("pAlias", alias, DbType.String, ParameterDirection.Input);
            return CheckRecord("findSlideByAlias", para);
        }

        public void Delete(int id)
        {
            var para = new DynamicParameters();
            para.Add("pId", id, DbType.Int32, ParameterDirection.Input);
            Execute("deleteSlide", para);
        }

        public IEnumerable<SlideModel> GetAllSlide()
        {
            return GetAll("getAllSlide", null);
        }

      public IEnumerable<SlideModel> GetAllSlideForHome()
      {
         return GetAll("getAllSlideForHome", null);
      }

      public SlideModel GetSlideById(int id)
        {
            var para = new DynamicParameters();
            para.Add("pId", id, DbType.Int32, ParameterDirection.Input);
            return GetById("getSlideById", para);
        }

        public void Insert(SlideModel model)
        {
            var para = GetParams(model);
            Execute("insertSlide", para);
        }

        public void Update(SlideModel model)
        {
            var para = GetParams(model);
            para.Add("pId", model.Id, DbType.Int32, ParameterDirection.Input);
            Execute("updateSlide", para);
        }

        private DynamicParameters GetParams(SlideModel model){
            var para = new DynamicParameters();
            para.Add("pName", model.Name, DbType.String, ParameterDirection.Input);
            para.Add("pAlias", model.Alias, DbType.String, ParameterDirection.Input);
            para.Add("pImage", model.Image, DbType.String, ParameterDirection.Input);
            para.Add("pButtonViewer", model.ButtonViewer, DbType.Boolean, ParameterDirection.Input);
            para.Add("pLinkViewer", model.LinkViewer, DbType.String, ParameterDirection.Input);
            para.Add("pActivated", model.Activated, DbType.Boolean, ParameterDirection.Input);
            return para;
        }
    }
}