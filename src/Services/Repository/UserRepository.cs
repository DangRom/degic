using DegicEducation.Services.InfactStructure;
using DegicEducation.Services.IRepository;
using DegicEducation.Services.Models;
using System.Data;
using Dapper;
using System;
using System.Collections.Generic;

namespace DegicEducation.Services.Repository{
   public class UserRepository : RepositoriesBase<UserModel>, IUserRepository
   {
      public void ChangePassword(string username, string password)
      {
         var para = new DynamicParameters();
         para.Add("pUserName", username, DbType.String, ParameterDirection.Input);
         para.Add("pPassword", password, DbType.String, ParameterDirection.Input);
         Execute("changePassword", para);
      }

      public bool CheckUsername(string username)
      {
         var para = new DynamicParameters();
         para.Add("pUserName", username, DbType.String, ParameterDirection.Input);
         return CheckRecord("findUserByUserName", para);
      }

      public void Delete(string username)
      {
         var para = new DynamicParameters();
         para.Add("pUserName", username, DbType.String, ParameterDirection.Input);
         Execute("deleteUser", para);
      }

      public IEnumerable<UserModel> GetAllUser()
      {
         return GetAll("getAllUser", null);
      }

      public UserModel GetUserByUserName(string username)
      {
         var para = new DynamicParameters();
         para.Add("pUserName", username, DbType.String, ParameterDirection.Input);
         return GetById("getUserByUserName", para);
      }

      public void Insert(UserModel model)
      {
         var para = GetParams(model);
         Execute("insertUser", para);
      }

      public bool Login(string username, string password)
      {
         var para = new DynamicParameters();
         para.Add("pUserName", username, DbType.String, ParameterDirection.Input);
         para.Add("pPassword", password, DbType.String, ParameterDirection.Input);
         return CheckRecord("login", para);
      }

      public void Update(UserModel model)
      {
         var para = GetParams(model);
         Execute("updateUser", para);
      }

      private DynamicParameters GetParams(UserModel model){
         var para = new DynamicParameters();
         para.Add("pUserName", model.UserName, DbType.String, ParameterDirection.Input);
         para.Add("pPassword", model.Password, DbType.String, ParameterDirection.Input);
         para.Add("pFullName", model.FullName, DbType.String, ParameterDirection.Input);
         para.Add("pActivated", model.Activated, DbType.Boolean, ParameterDirection.Input);
         return para;
      }
   }
}