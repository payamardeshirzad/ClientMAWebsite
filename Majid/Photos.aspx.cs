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
public partial class Photos_aspx : System.Web.UI.Page {

    protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e) {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string conn = "Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Majid\\App_Data\\mainlibrary.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True";
        SqlConnection sqlcon = new SqlConnection(conn);
        sqlcon.Open();
        Boolean b = false;
        foreach (GridViewRow gr in GridView1.Rows)
        {
            if (gr.Cells[1].Text == TextBox1.Text)
            {

                b = true;
                this.Title = "found" + gr.Cells.Count.ToString();    //   Response.Write("Record found : " + gr.Cells[1].Text);
                TextBox2.Text = gr.Cells[2].Text;
                TextBox3.Text = gr.Cells[3].Text;
                TextBox4.Text = gr.Cells[4].Text;
                TextBox5.Text = gr.Cells[5].Text;
                TextBox6.Text = gr.Cells[6].Text;
                //TextBox7.Text = gr.Cells[7].Text;
                break;
            }
        }
        if (!b)
        {
            this.Title = "not found";  //  Response.Write("Record was not found...");
        }
        sqlcon.Close();
    }
}