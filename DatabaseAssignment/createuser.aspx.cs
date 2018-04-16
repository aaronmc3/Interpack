using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace group8
{
    public partial class createuser : System.Web.UI.Page
    {
        Datacon dataconn = new Datacon();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                dataconn.ecDropDownList(DropDownList1, "select * from job_role", "job_name", "job_id");
                dataconn.ecDropDownList(DropDownList2, "select * from province", "p_name", "p_name");
                GetDropDownList1();
                GetDropDownList2();
                Label9.Visible = false;
                Label8.Visible = false;
                Label10.Visible = false;
            }
        }

        public void GetDropDownList1()
        {
            dataconn.ecDropDownList(DropDownList3, "select * from city where p_name='"
                + DropDownList2.SelectedValue.ToString() + "'", "c_name", "c_id");
        }

        public void GetDropDownList2()
        {
            dataconn.ecDropDownList(DropDownList4, "select * from store where c_id='"
                + DropDownList3.SelectedValue.ToString() + "'", "name", "store_id");
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            GetDropDownList1();
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            GetDropDownList2();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label8.Visible = false;
            Label9.Visible = false;
            Label10.Visible = false;
            if (TextBox1.Text == "" || TextBox2.Text == "" )
            {
                Label8.Visible = true;
            }
            else
            {
                
                bool b;
                string pass = "123456";
                b = dataconn.eccom("insert into user(user_id,name,job_id,store_id,password)values('"
                   + this.TextBox1.Text  + "','" + this.TextBox2.Text + "','"
                   + DropDownList1.SelectedValue + "','" 
                   + DropDownList4.SelectedValue + "','"+pass+"')");
                if (b)
                { 
                    Label10.Visible = true;
                    dataconn.eccom("create view " + this.TextBox1.Text + " as select user_id,name,job_id,store_id,password from user where user_id='" + this.TextBox1.Text + "'");
                    
                }
                else Label9.Visible = true;
            }
        }




    }
}