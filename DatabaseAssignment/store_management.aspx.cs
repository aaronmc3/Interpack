using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace group8
{
    public partial class store_management : System.Web.UI.Page
    {
        Datacon dataconn = new Datacon();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Page.IsPostBack == false)
            {
                dataconn.ecDropDownList(DropDownList1, "select * from province", "p_name", "p_name");
                GetDropDownList();
                Label7.Visible = false;
                Label8.Visible = false;
            }
            

        }

 

        public void GetDropDownList()
        {
            dataconn.ecDropDownList(DropDownList2, "select * from city where p_name='"
                + DropDownList1.SelectedValue.ToString() + "'", "c_name", "c_id");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GetDropDownList();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Label8.Visible = false;
            Label7.Visible = false;
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            DropDownList1.SelectedValue = "ANHUI";
            GetDropDownList();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Label8.Visible = false;
            Label7.Visible = false;
            if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "")
            {
                Label8.Visible = true;
            }
            else
            {
                MySqlDataReader read = dataconn.ExceRead("select max(store_id) from store");
                read.Read();
                int a,c;
                c = int.Parse(TextBox2.Text);
                bool b;
                a = (int)read["max(store_id)"];
                b = dataconn.eccom("insert into store(store_id,street,postcode,name,c_id)values(" 
                   + (a + 1) + ",'" + this.TextBox1.Text + "',"
                   + c + ",'" + this.TextBox3.Text + "','"
                   + DropDownList2.SelectedValue + "')");
                if(b)
                Label7.Visible = true;
                Label7.Text = "Successful! The store ID is:"+(a+1);
            }
        }


        

        
    }
}