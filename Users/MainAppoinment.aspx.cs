using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Security.Claims;


namespace Hospital_management_System.Users
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlCommand cmd;
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id1 = 0;

            string str1 = "select max(AID) as AID from AppontTab";
            da = new SqlDataAdapter(str1, con);
            da.Fill(ds);


            id1 = 1;

            id1 = int.Parse(ds.Tables[0].Rows[0]["AID"].ToString());


            if (id1 > 0)
            {
                id1++;
            }
            else
            {
                id1 = 2;
            }

            lbl_Appontment_no.Text = id1.ToString();
        }

        protected void btn_main_appointment_Submit_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();          
                if (Global.isLoggedIn)
                {
                    string str = "insert into AppontTab(AID,Section,Name,Gender,Mobile,Email,Date) values(" + lbl_Appontment_no.Text + ",'" + DropDownList_Section_1.SelectedValue.ToString() + "','" + txt_Appoint_name_1.Text + "','" + DropDownList_gender_1.SelectedValue.ToString() + "'," + txt_Apoint_Mobile_1.Text + ",'" + txt_Apoint_Email_1.Text + "','" + datepicke1.Text + "')";
                    cmd = new SqlCommand(str, con);
                    cmd.ExecuteNonQuery();



                    Response.Write("<script>alert('Appointment Saved')</script>");
                    con.Close();
                }
                else
                {
                    Response.Write("<script>alert('First please log in or sign up')</script>");
                    Response.Redirect("Loginpage.aspx");
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }
    }
}