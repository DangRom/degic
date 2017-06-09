using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using MySql.Data;

namespace DegicEducation.Services.InfactStructure
{
    public class RepositoriesBase<T> : IRepositoriesBase<T> where T : class
    {
        private IDbConnection _db;
        protected IDbConnection db
        {
            get
            {
                string cnn = $"{Startup.Configuration["Database:ConnectionString"]}";
                return _db ?? (_db = new MySql.Data.MySqlClient.MySqlConnection(cnn));
            }
        }

        public bool CheckRecord(string sp, DynamicParameters para)
        {
            var check = db.Query<int>(sp, para, null, false, null, CommandType.StoredProcedure);
            return Convert.ToBoolean(check.First());
        }

        public void Execute(string sp, DynamicParameters para)
        {
            db.Execute(sp, para, null, null, CommandType.StoredProcedure);
        }

        public IEnumerable<T> GetAll(string sp, DynamicParameters para)
        {
            return db.Query<T>(sp, para, null, false, null, CommandType.StoredProcedure).ToList();
        }

        public T GetById(string sp, DynamicParameters para)
        {
            return db.Query<T>(sp, para, null, false, null, CommandType.StoredProcedure).FirstOrDefault();
        }
    }
}
