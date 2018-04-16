using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DatabaseAssignment
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonAction(object sender, EventArgs e)
        {
            //for testing buttons
            //change the text of txtError on login.aspx page
            lblError.Text = "Button Pressed";
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //dummy method
            lblError.Text = "Log in button pressed";
            
        }

        protected void btnExit_Click(object sender, EventArgs e)
        {
            //dummy method
            lblError.Text = "Exit in button pressed";
            //close the form
            //this.Close();
        }

        /*
        protected bool Check_Username()
        {
            string userfromdb = ""; // string to store username read from database
            string userfromform = txtUser.Text; //string to store username read from textbox


           
        }
        */

    }
}