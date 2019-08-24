using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PBCS_WEB
{
    public partial class frmWelcome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                bool IsAuthorized;
                if (Session["IsAuthorized"] == null)
                    IsAuthorized = false;
                else
                    Boolean.TryParse(Session["IsAuthorized"].ToString(), out IsAuthorized);
                //page loads for the first time
                if (IsAuthorized == false)
                {
                    Response.Redirect("frmLogin.aspx");
                }
            }
        }
    }
}