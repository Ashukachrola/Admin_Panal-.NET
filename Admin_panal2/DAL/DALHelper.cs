﻿namespace Admin_panal2.DAL
{
    public class DALHelper
    {
        #region Connection String
        public static string ConnectionString = new ConfigurationBuilder().AddJsonFile("appsettings.json").Build().GetConnectionString("ConnectionString");
        #endregion
    }

}

























