using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.IO;
using System.Windows;

namespace PBCS_WEB
{
    public partial class frmLogin : System.Web.UI.Page
    {
        private object txtLogedUSer;
        private object lblUSer;

        public object UserName { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            char txtUserType;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("frmUser.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Server.Transfer("frmUser.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlConnection sqlcon = new SqlConnection(@"Data Source=NOTE-ASUS\SQLEXPRESS;Initial Catalog=PBCS;User ID=josivan;Password=josivan");
            string query = "Select * from PBCS.Users where UserEmail = '" + txtEmail.Text.Trim() + "' and UserPassword = '" + txtPassword.Text.Trim() + "'";
            SqlDataAdapter sda = new SqlDataAdapter(query, sqlcon);

            DataTable dtbl = new DataTable();
            sda.Fill(dtbl);

            if (dtbl.Rows.Count == 1)
            {                
                string uType = dtbl.Rows[0][9].ToString();
                string UserName = dtbl.Rows[0][1].ToString();                

                MessageBox.Show("Welcome " + UserName + " you are loged as " + uType + " !", "PBSC - System message", MessageBoxButton.OK);

                Session["uType"]        = "uType";
                Session["Username"]     = "UserName";                
                Session["IsAuthorized"] = true;

                lblUSer = "UserName";

                Server.Transfer("frmWelcome.aspx");
            }

            else
            {
                MessageBox.Show("Check user name and password!", "PBCS - System message", MessageBoxButton.OK);
                return;
            }
        }

    }
}