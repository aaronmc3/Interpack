using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using MySql.Data.MySqlClient;

/// <summary>
/// 
/// </summary>
public class Datacon
{
    public Datacon()
    {

    }
    public MySqlConnection getcon()
    {
 //       string strCon = ConfigurationManager.ConnectionStrings["ConStr"].ToString();
        MySqlConnection sqlCon = new MySqlConnection("server=arlia.computing.dundee.ac.uk;User Id=13ac3u08;Password=bac123;Persist Security Info=True;database=13ac3d08");
        return sqlCon;
    }
    public bool eccom(string sqlstr)
    {
        MySqlConnection con = this.getcon();
        con.Open();
        MySqlCommand mycommand = new MySqlCommand(sqlstr, con);
        try
        {
            mycommand.ExecuteNonQuery();
            return true;
        }
        catch
        {
            return false;
        }
        finally
        {
            con.Close();
        }
    }
    public bool ecDropDownList(DropDownList DDL, string sqlstr3, string DTF, string DVF)
    {

        MySqlConnection con = this.getcon();

        con.Open();

        MySqlDataAdapter mydataadapter = new MySqlDataAdapter(sqlstr3, con);
        
        DataSet mydataset = new DataSet();

        mydataadapter.Fill(mydataset);
        DDL.DataSource = mydataset;
        DDL.DataTextField = DTF;
        DDL.DataValueField = DVF;
        try
        {

            DDL.DataBind();
            return true;
        }
        catch
        {
            return false;
        }
        finally
        {
            con.Close();
        }
    }
    public bool ecadabind(GridView gv, string sqlstrl4)
    {
        MySqlConnection con = this.getcon();
        con.Open();
        MySqlDataAdapter mydataadapter = new MySqlDataAdapter(sqlstrl4, con);
        DataSet mydataset = new DataSet();
        mydataadapter.Fill(mydataset);
        gv.DataSource = mydataset;
        try
        {

            gv.DataBind();

            return true;
        }
        catch
        {
            return false;
        }
        finally
        {
            con.Close();
        }
    }
    public bool ecadabindinfostring(GridView gv, string sqlstr5, string DNK)
    {
        MySqlConnection con = this.getcon();
        con.Open();
        MySqlDataAdapter mydataadapter = new MySqlDataAdapter(sqlstr5, con);
        DataSet mydataset = new DataSet();
        mydataadapter.Fill(mydataset);
        gv.DataSource = mydataset;
        gv.DataKeyNames = new string[] { DNK };
        try
        {
            gv.DataBind();
            return true;
        }
        catch
        {
            return false;
        }
        finally
        {
            con.Close();
        }
    }
    public MySqlDataReader ExceRead(string SqlCom)
    {
        MySqlConnection con = this.getcon();
        con.Open();
        MySqlCommand sqlcom = new MySqlCommand(SqlCom, con);
        MySqlDataReader read = sqlcom.ExecuteReader();
        return read;
    }
}