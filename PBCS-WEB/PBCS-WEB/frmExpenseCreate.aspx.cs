using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace PBCS_WEB
{
    public partial class frmExpenseCreate : System.Web.UI.Page
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

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            SqlConnection sqlcon = new SqlConnection(@"Data Source=NOTE-ASUS\SQLEXPRESS;Initial Catalog=PBCS;User ID=josivan;Password=josivan"); 
            sqlcon.Open();
            SqlCommand cmd = sqlcon.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Insert into PBCS.Bill values ('" + txtBillDueDate.Text + "','" + txtBillPayDate.Text + "','" + txtBillValue.Text + "','" + txtAccountName.Text + "','" + txtVendorName.Text + "','" + txtAccountName.Text + "','" + txtBillObs.Text + "','Expense')";
            cmd.ExecuteNonQuery();
            sqlcon.Close();

            lblSuccess.Visible = true;            

            txtBillDueDate.Text = String.Empty;
            txtBillObs.Text = String.Empty;
            txtBillPayDate.Text = String.Empty;
            txtAccountName.Text = String.Empty;            
            txtBillValue.Text = String.Empty;
            txtVendorName.Text = String.Empty;                      
        }
    }
}