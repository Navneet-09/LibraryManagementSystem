using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class userprofile : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected double countfine { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            
            try
            {
                if(Session["username"] == null)
                {
                    Response.Write("<script>alert('Session Expired Login Again.');</script>");
                    Response.Redirect("userlogin.aspx");
                }
                else
                {
                    GetUserBookData();
                    if(!Page.IsPostBack)
                    {
                        GetUserPersonalDetails();
                    }
                }
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('Session Expired Login Again.');</script>");
                Response.Redirect("userlogin.aspx");
            }
        }

        //Update Button click
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Write("<script>alert('Session Expired Login Again.');</script>");
                Response.Redirect("userlogin.aspx");
            }
            else
            {
                UpdateUserPersonalDetails();
            }
        }


        //User defined Function

        void UpdateUserPersonalDetails()
        {
            string password = " ";
            if (TextBox10.Text.Trim() == "")
            {
                password = TextBox9.Text.Trim();
                
            }
            else
            {
                password = TextBox10.Text.Trim();
            }
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE member_master_tbl SET full_name=@full_name,dob=@dob,contact_no=@contact_no,email=@email," +
                    "state=@state,city=@city,pincode=@pincode,full_address=@full_address,password=@password," +
                    "account_status=@account_status WHERE member_id='"+Session["username"].ToString().Trim()+"' ", con);

                cmd.Parameters.AddWithValue("@full_name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@dob", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@contact_no", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@state", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@city", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@pincode", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@full_address", TextBox7.Text.Trim());
               
                cmd.Parameters.AddWithValue("@password", password);
                cmd.Parameters.AddWithValue("@account_status", "Active");

                int result =cmd.ExecuteNonQuery();
                con.Close();
                if(result>0)
                {
                    Response.Write("<script>alert('Your Details Updated Succesfully');</script>");
                    GetUserPersonalDetails();
                    GetUserBookData();
                }
                else
                {
                    Response.Write("<script>alert('Invalid Entry.');</script>");
                }
            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void GetUserPersonalDetails()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand(" SELECT * from member_master_tbl where member_id='" + Session["username"].ToString() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                System.Data.DataTable dt = new System.Data.DataTable();
                da.Fill(dt);
                TextBox1.Text = dt.Rows[0]["full_name"].ToString();
                TextBox3.Text = dt.Rows[0]["dob"].ToString();
                TextBox2.Text = dt.Rows[0]["contact_no"].ToString();
                TextBox4.Text = dt.Rows[0]["email"].ToString();
                DropDownList1.SelectedValue = dt.Rows[0]["state"].ToString().Trim();
                TextBox6.Text = dt.Rows[0]["city"].ToString();
                TextBox5.Text = dt.Rows[0]["pincode"].ToString();
                TextBox7.Text = dt.Rows[0]["full_address"].ToString();
                TextBox8.Text = dt.Rows[0]["member_id"].ToString();
                TextBox9.Text = dt.Rows[0]["password"].ToString();

                Label1.Text = dt.Rows[0]["account_status"].ToString().Trim();
                 if(dt.Rows[0]["account_status"].ToString().Trim() == "Active")
                {
                    Label1.Attributes.Add("class","badge rounded-pill bg-success text-dark");
                }
                else if (dt.Rows[0]["account_status"].ToString().Trim() == "Pending")
                {
                    Label1.Attributes.Add("class","badge rounded-pill bg-warning text-dark");
                }
                else if (dt.Rows[0]["account_status"].ToString().Trim() == "Deactive")
                {
                    Label1.Attributes.Add("class","badge rounded-pill bg-danger text-dark");
                }
                else
                {
                    Label1.Attributes.Add("class","badge badge-pill badge-secondary");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }

        void GetUserBookData()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand(" SELECT * from book_issue_tbl where member_id='" + Session["username"].ToString() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                System.Data.DataTable dt = new System.Data.DataTable();
                da.Fill(dt);

                GridView1.DataSource = dt;
                GridView1.DataBind();


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            try
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    DateTime dt = Convert.ToDateTime(e.Row.Cells[5].Text);
                    DateTime today = DateTime.Today;
                    if (today > dt)
                    {
                        e.Row.BackColor = System.Drawing.Color.Red;
                        countfine = (today - dt).TotalDays * 5;
                        //Response.Write("<script>alert('Your total fine till today : " + countfine + "');</script>");
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}