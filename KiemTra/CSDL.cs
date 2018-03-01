using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

namespace KiemTra
{
    public class CSDL
    {
        public static string connectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\trant\OneDrive\Tài liệu\Visual Studio 2008\Projects\KiemTra\KiemTra\App_Data\QuanLyCuaHang.mdf;Integrated Security=True;User Instance=True";
        public static readonly SqlConnection Connection;
       static CSDL()
       {
           Connection = new SqlConnection(connectionString);
       }

       public static DataTable LayDuLieu(string sql)
       {
           DataTable dt = new DataTable();

           using (var cmd = new SqlCommand(sql, Connection))
           {
               cmd.Connection.Open();
               dt.Load(cmd.ExecuteReader());
               cmd.Connection.Close();
           }
           return dt;
       }

       public static int DoUpdate(string sql)
       {
           int affected = -1;

           using (var cmd = new SqlCommand(sql, Connection))
           {
               cmd.Connection.Open();
               affected = cmd.ExecuteNonQuery();
               cmd.Connection.Close();
           }
           return affected;
       }
    }
}
