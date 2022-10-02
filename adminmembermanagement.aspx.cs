using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class adminmembermanagement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        //Go Button
        protected void Button4_Click(object sender, EventArgs e)
        {
            getMemberByID();
        }

        //Active button

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            updateStatusByID("Active");
        }

        //pending button
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            updateStatusByID("Pending");
        }

        //deactive button
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            updateStatusByID("Deactive");
        }

        //Delete member 
        protected void Button2_Click(object sender, EventArgs e)
        {
            deleteMemberById();
        }

        //User Defined function


        bool checkIfMemberExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand(" SELECT * from member_master_tbl where member_id='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                System.Data.DataTable dt = new System.Data.DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }

        void deleteMemberById()
        {
            if(checkIfMemberExist())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == System.Data.ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("DELETE from member_master_tbl WHERE member_id='" + TextBox1.Text.Trim() + "'", con);

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Member Deleted Successfully.');</script>");
                    clearform();
                    GridView1.DataBind();
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Member Id')</script>");
                
            }
           
        }

        void getMemberByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from member_master_tbl where member_id='" + TextBox1.Text.Trim() +"'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        TextBox3.Text = dr.GetValue(0).ToString();
                        TextBox7.Text = dr.GetValue(10).ToString();
                        TextBox8.Text = dr.GetValue(1).ToString();
                        TextBox9.Text = dr.GetValue(2).ToString();
                        TextBox10.Text = dr.GetValue(3).ToString();
                        TextBox11.Text = dr.GetValue(4).ToString();
                        TextBox12.Text = dr.GetValue(5).ToString();
                        TextBox13.Text = dr.GetValue(6).ToString();
                        TextBox14.Text = dr.GetValue(7).ToString();

                    }
                    
                }
                else
                {
                    Response.Write("<script>alert('Invalid Credentials!');</script>");
                }


            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void updateStatusByID(string status)
        {
            if(checkIfMemberExist())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == System.Data.ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("UPDATE member_master_tbl SET account_status='" + status + "' WHERE member_id='" + TextBox1.Text.Trim() + "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    GridView1.DataBind();
                    Response.Write("<script>alert('Member Status Updated');</script>");


                }

                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
                clearform();
            }
            else
            {
                Response.Write("<script>alert('Invalid Member ID.');</script>");
            }
            
        }

        void clearform()
        {
            TextBox1.Text = null;
            TextBox3.Text = null;
            TextBox7.Text = null;
            TextBox8.Text = null;
            TextBox9.Text = null;
            TextBox10.Text = null;
            TextBox11.Text = null;
            TextBox12.Text = null;
            TextBox13.Text = null;
            TextBox14.Text = null;
        }
    }
}