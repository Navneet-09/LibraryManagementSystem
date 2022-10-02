using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"] == null)
                {
                    LinkButton1.Visible = true; //user login link button
                    LinkButton2.Visible = true; // user signup button

                    LinkButton3.Visible = false; //Log-out
                    LinkButton5.Visible = false; // hello user

                    LinkButton6.Visible = true; //Admin Login
                    LinkButton11.Visible = false;//Author management
                    LinkButton12.Visible = false;//publisher managemnt
                    LinkButton8.Visible = false;// book inventory
                    LinkButton9.Visible = false;//book issuing
                    LinkButton10.Visible = false; // member management

                }

                else if(Session["role"].Equals("user"))
                {
                    LinkButton1.Visible = false; //user login link button
                    LinkButton2.Visible = false; // user signup button

                    LinkButton3.Visible = true; //Log-out
                    LinkButton5.Visible = true; // hello user
                    LinkButton5.Text ="Hello " + Session["username"].ToString();


                    LinkButton6.Visible = true; //Admin Login
                    LinkButton11.Visible = false;//Author management
                    LinkButton12.Visible = false;//publisher managemnt
                    LinkButton8.Visible = false;// book inventory
                    LinkButton9.Visible = false;//book issuing
                    LinkButton10.Visible = false; // member management
                }

                else if (Session["role"].Equals("admin"))
                {
                    LinkButton1.Visible = false; //user login link button
                    LinkButton2.Visible = false; // user signup button

                    LinkButton3.Visible = true; //Log-out
                    LinkButton5.Visible = true; // hello user
                    LinkButton5.Text = "Hello Admin";


                    LinkButton6.Visible = false; //Admin Login
                    LinkButton11.Visible = true;//Author management
                    LinkButton12.Visible = true;//publisher managemnt
                    LinkButton8.Visible = true;// book inventory
                    LinkButton9.Visible = true;//book issuing
                    LinkButton10.Visible = true; // member management
                }
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
           
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminauthormanagement.aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminpublishermanagement.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminbookinventory.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminbookissue.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminmembermanagement.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("homepage.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("bookview.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["username"] = null;
            Session["fullname"] = null;
            Session["role"] = null;
            Session["status"] =null;

            LinkButton1.Visible = true; //user login link button
            LinkButton2.Visible = true; // user signup button

            LinkButton3.Visible = false; //Log-out
            LinkButton5.Visible = false; // hello user

            LinkButton6.Visible = true; //Admin Login
            LinkButton11.Visible = false;//Author management
            LinkButton12.Visible = false;//publisher managemnt
            LinkButton8.Visible = false;// book inventory
            LinkButton9.Visible = false;//book issuing
            LinkButton10.Visible = false; // member management

            Response.Redirect("homepage.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("userprofile.aspx");
        }
    }
}