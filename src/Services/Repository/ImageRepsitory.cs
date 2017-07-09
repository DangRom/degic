using DegicEducation.Services.InfactStructure;
using DegicEducation.Services.IRepository;
using DegicEducation.Services.Models;
using System.Data;
using Dapper;
using System;
using System.Collections.Generic;

namespace DegicEducation.Services.Repository{
   public class ImageRepository : RepositoriesBase<ImageModel>, IImageRepository
   {
      public void Delete(int id)
      {
         var para = new DynamicParameters();
         para.Add("pId", id, DbType.Int32, ParameterDirection.Input);
         Execute("deleteImage", para);
      }

      public IEnumerable<ImageModel> GetAllCustomerForHomePage()
      {
         return GetAll("getAllCustomer", null);
      }

      public IEnumerable<ImageModel> GetAllImage()
      {
         return GetAll("getAllImage", null);
      }

      public IEnumerable<ImageModel> GetAllImageForHomePage()
      {
         return GetAll("getAllGallery", null);
      }

      public ImageModel GetImageById(int id)
      {
         var para = new DynamicParameters();
         para.Add("pId", id, DbType.Int32, ParameterDirection.Input);
         return GetById("getImageById", para);
      }

      public void Insert(ImageModel model)
      {
         var para = GetParams(model);
         Execute("insertImage", para);
      }

      public void Update(ImageModel model)
      {
         var para = GetParams(model);
         para.Add("pId", model.Id, DbType.Int32, ParameterDirection.Input);
         Execute("updateImage", para);
      }

      private DynamicParameters GetParams(ImageModel model){
         var para = new DynamicParameters();
         para.Add("pName", model.Name, DbType.String, ParameterDirection.Input);
         para.Add("pImage", model.Image, DbType.String, ParameterDirection.Input);
         para.Add("pCustomer", model.Customer, DbType.Boolean, ParameterDirection.Input);
         para.Add("pGallery", model.Gallery, DbType.Boolean, ParameterDirection.Input);
         return para;
      }
   }
}