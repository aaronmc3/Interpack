using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace DatabaseAssignment
{
    public partial class CityReport : System.Web.UI.Page
    {
        Datacon dataconnection = new Datacon();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Page.IsPostBack == false)
            {
                /*
                dataconnection.ecDropDownList(DropDownList1, "select * from province", "p_name", "p_name");
                dataconnection.ecDropDownList(DropDownList2, "select * from ", "", "");
                dataconnection.ecDropDownList(DropDownList3, "select * from ", "", "");
                              */
            }
        
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //generate report
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //print report
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //cancel report (exit?)
        }


    }
}