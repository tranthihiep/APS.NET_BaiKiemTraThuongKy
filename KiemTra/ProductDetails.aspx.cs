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
    public partial class ProductDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var idSP = "0";
            if (Request.QueryString["id_sp"] != null)
            {
                idSP = Request.QueryString["id_sp"];
            }

            datalistDetail.DataSource = CSDL.LayDuLieu("Select * From SANPHAM where IDSP="+idSP);
            datalistDetail.DataBind();
        }
    }
}
