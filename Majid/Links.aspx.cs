using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
public partial class Links_aspx : System.Web.UI.Page  {

    protected void Button1_Click(object sender, EventArgs e)
    {
        string conn = "Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Majid\\App_Data\\mainlibrary.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True";
        SqlConnection sqlcon = new SqlConnection(conn);
        sqlcon.Open();
        SqlCommand insertcommand = new SqlCommand("Delete From Book where Bookname='" + TextBox1.Text + "'");
        insertcommand.Connection = sqlcon;
        insertcommand.CommandType = CommandType.Text;
        int num = insertcommand.ExecuteNonQuery();
        this.Title = num.ToString();
        sqlcon.Close();
    }
}