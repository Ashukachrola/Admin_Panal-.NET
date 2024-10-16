using Admin_panal2.Areas.LOC_Country.Models;
using Admin_panal2.DAL.LOC_CountryDAL;
using Microsoft.Practices.EnterpriseLibrary.Data;
using Microsoft.Practices.EnterpriseLibrary.Data.Sql;
using System.Data;
using System.Data.Common;

namespace Admin_panal2.DAL.LOC_CountryDAL
{
    public class LOC_CountryDAL : LOC_CountryDALBase
    {
        #region Method : dbo.PR_LOC_Country_Filter
        public DataTable dbo_PR_LOC_Country_Filter(LOC_CountryFilterModel lOC_CountryFilterModel)
        {
            DataTable dataTable = new DataTable();
            SqlDatabase sqlDatabase = new SqlDatabase(ConnectionString);
            DbCommand dbCommand = sqlDatabase.GetStoredProcCommand("PR_CountryFilter");
            sqlDatabase.AddInParameter(dbCommand, "@CountryName", DbType.String, lOC_CountryFilterModel.CountryName);
            sqlDatabase.AddInParameter(dbCommand, "@CountryCode", DbType.String, lOC_CountryFilterModel.CountryCode);
            using (IDataReader dataReader = sqlDatabase.ExecuteReader(dbCommand))
            {
                dataTable.Load(dataReader);
            }
            return dataTable;
        }
        #endregion
    }
}