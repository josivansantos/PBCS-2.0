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
    public partial class frmIncomeCreate : System.Web.UI.Page
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
            cmd.CommandText = "Insert into PBCS.Income values ('" + txtIncomeDueDate.Text + "','" + txtIncomePayDate.Text + "','" + txtIncomeValue.Text + "','"+ txtIncomeObs.Text +"','" + txtClientName.Text + "','Income','StatusName', 'IncomeType')";
            cmd.ExecuteNonQuery();
            sqlcon.Close();

            lblSuccess.Visible = true;
            //MessageBox.Show("Record inserted successfully!", "System message", MessageBoxButton.OK);

            txtClientName.Text = String.Empty;
            txtIncomeDueDate.Text = String.Empty;
            txtIncomeObs.Text = String.Empty;
            txtIncomePayDate.Text = String.Empty;
            txtIncomeValue.Text = String.Empty;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmMenu.aspx");
        }

        protected void txtAccountName_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}