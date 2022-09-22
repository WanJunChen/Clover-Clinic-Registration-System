using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class prog1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text= DateTime.Now.ToString();
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView1.DataSourceID = "SqlDataSource1";
        GridView1.DataBind();
        GridView1.Visible = false;
        if (GridView1.Rows.Count != 0)
        {
            string id = GridView1.Rows[0].Cells[0].Text.ToString().Trim();
            string name = GridView1.Rows[0].Cells[1].Text.ToString().Trim();
            string gender = GridView1.Rows[0].Cells[2].Text.ToString().Trim();
            string birth = GridView1.Rows[0].Cells[3].Text.ToString().Trim();
            string phone = GridView1.Rows[0].Cells[4].Text.ToString().Trim();
            string address = GridView1.Rows[0].Cells[5].Text.ToString().Trim();
            string account = GridView1.Rows[0].Cells[6].Text.ToString().Trim();
            string pwd = GridView1.Rows[0].Cells[7].Text.ToString().Trim();

            Session["login"] = "ok";

            Session["user_id"] = id;
            Session["user_name"] = name;
            Session["user_gender"] = gender;
            Session["user_birth"] = birth;
            Session["user_phone"] = phone;
            Session["user_address"] = address;
            Session["user_account"] = account;
            Session["user_pwd"] = pwd;

            string thisyear = DateTime.Today.Year.ToString();
            string birthyear = Session["user_birth"].ToString();
            int Thisyear = Convert.ToInt32(thisyear);
            int Birthyear = (Convert.ToInt32(birthyear)) / 10000;
            int age = Thisyear - Birthyear;
            Session["user_age"] = age;

            Response.Redirect("prog3.aspx");
        }
        else
        {
            Session["login"] = "fail";
            Response.Write("<script>alert('登入失敗');</script>");
        }
        
    }

    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}