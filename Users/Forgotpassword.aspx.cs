using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Hospital_management_System.Users
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Loginpage.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Forgotpassword.aspx");
        }


        protected void btn_fpass_Click(object sender, EventArgs e)
        {
            con.Open();

            try
            {
                string str = "select Email, Mobile FROM UserTab where Email='" + txt_fpass_Email.Text+"' and Mobile="+txt_fpass_mobile.Text+"";
                SqlDataAdapter da = new SqlDataAdapter(str,con);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if(dt.Rows.Count > 0)
                {
                    string str1 = "UPDATE UserTab SET Pass='" + txt_fpass_newpass.Text + "' WHERE Email='" + txt_fpass_Email.Text + "' AND Mobile='" + txt_fpass_mobile.Text + "'";
                    cmd = new SqlCommand(str1, con);
                    cmd.ExecuteNonQuery();

                    Response.Write("<script>alert('Change Password Successfully')</script>");

                    con.Close();
                }
                else
                {

                }
                
            }
            catch(Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }
    }
}