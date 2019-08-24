using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Windows;

namespace PBCS_WEB
{
    public partial class frmUser : System.Web.UI.Page
    {
        //private object MessageBoxIcon;

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

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection sqlcon = new SqlConnection(@"Data Source=NOTE-ASUS\SQLEXPRESS;Initial Catalog=PBCS;User ID=josivan;Password=josivan");
            sqlcon.Open();
            SqlCommand cmd = sqlcon.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Insert into PBCS.Users values ('" + txtName.Text + "','" + txtPassword.Text + "','" + txtEmail.Text + "','" + txtAddress.Text + "','" + txtZip.Text + "','" + txtCity.Text + "','" + txtState.Text + "','" + txtCountry.Text + "','" + txtUserType.Text + "')"; 
            cmd.ExecuteNonQuery();
            sqlcon.Close();

            lblSuccess.Visible = true;
            //MessageBox.Show("Record inserted successfully!", "System message", MessageBoxButton.OK);

            txtName.Text = String.Empty;
            txtPassword.Text = String.Empty;
            txtEmail.Text = String.Empty;
            txtUserType.Text = String.Empty;

            txtAddress.Text = String.Empty;
            txtZip.Text = String.Empty;
            txtCity.Text = String.Empty;
            txtState.Text = String.Empty;
            txtCountry.Text = String.Empty;            
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Server.Transfer("frmMenu.aspx");
        }
    }
}