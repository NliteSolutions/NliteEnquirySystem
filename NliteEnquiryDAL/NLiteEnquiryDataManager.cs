using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;
using System.Data.SqlClient;
using NliteEnquiryDAL;

namespace NliteEnquiryDAL
{
 
    public class NLiteEnquiryDataManager
    {

        public DataSet GetUseDetails(String userName, string password)
        {
            DataSet userDS =  new DataSet("UserInfo");
            //string strcon = "Data Source=NSPC0004\\SQLEXPRESS; Initial Catalog=NLiteEnquiryDB; User ID = sa; Password = Nlite@123";
            string strcon=ConfigurationManager.ConnectionStrings["NLiteConnectionString"].ConnectionString;
            ////SqlConnection con = new SqlConnection(strcon);
            //SqlCommand com = new SqlCommand("spLogin", con);
            //com.CommandType = CommandType.StoredProcedure;
            //SqlParameter p1 = new SqlParameter("username", userName);
            //SqlParameter p2 = new SqlParameter("password", password);
            //com.Parameters.Add(p1);
            //com.Parameters.Add(p2);
            //con.Open();
            //SqlDataReader rd = com.ExecuteReader();
            //rd.
            //DataSet ds = new DataSet("UserInfo");
            using (SqlConnection con = new SqlConnection(strcon))
            {
                con.Open();
                SqlCommand sqlComm = new SqlCommand("spLogin", con);
                sqlComm.Parameters.AddWithValue("@username", userName);
                sqlComm.Parameters.AddWithValue("@password", password);

                sqlComm.CommandType = CommandType.StoredProcedure;

                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = sqlComm;

                da.Fill(userDS);
            }
            return userDS;
            
        }


    }
}
