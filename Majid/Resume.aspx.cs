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
public partial class Resume_aspx : System.Web.UI.Page {

    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string conn = "Data Source=.\\SQLEXPRESS;User Instance=True;AttachDbFilename=C:\\Majid\\App_Data\\mainlibrary.mdf;Integrated Security=True;Connect Timeout=30";
        SqlConnection sqlcon = new SqlConnection(conn);
        sqlcon.Open();
        SqlCommand insertcommand = new SqlCommand("insert into Book (Bookname,Author,ISBN,Publisher,Pages,Edition) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox3.Text + "')");
        insertcommand.Connection = sqlcon;
        insertcommand.CommandType = CommandType.Text;
        int num = insertcommand.ExecuteNonQuery();
        this.Title = num.ToString();
        sqlcon.Close();
    }
}