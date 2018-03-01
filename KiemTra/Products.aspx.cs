using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

namespace KiemTra
{
    public partial class Products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int idThuongHieu = 0;

            if (Request.QueryString["thuong_hieu_id"] != null)
            {
                idThuongHieu = Int32.Parse(
                    Request.QueryString["thuong_hieu_id"]);
            }


            var dt = CSDL.LayDuLieu("Select * From SANPHAM where TH_ID=" + idThuongHieu);

            DataList1.DataSource = dt;
            DataList1.DataBind();

        }
    }
}
