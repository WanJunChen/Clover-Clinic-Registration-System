using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = DateTime.Now.ToString();


        if (Session["login"] == "ok")
        {
        Label4.Text = Session["user_name"].ToString();
        Label5.Text = Session["user_gender"].ToString();
        Label6.Text = Session["user_birth"].ToString();
        Label7.Text = Session["user_phone"].ToString();
        Label8.Text = Session["user_address"].ToString();
        Label9.Text = Session["user_account"].ToString();
        Label10.Text = Session["user_pwd"].ToString();
            int age = Convert.ToInt32(Session["user_age"]);
            if (Session["user_gender"].ToString() == "男性")
            {
                if (age > 18)
                    Label3.Text = Session["user_name"].ToString() + "先生，你好";
                else if (age <= 18)
                    Label3.Text = Session["user_name"].ToString() + "弟弟，你好";
            }
            else if (Session["user_gender"].ToString() == "女性")
            {
                if (age > 18)
                    Label3.Text = Session["user_name"].ToString() + "小姐，你好";
                else if (age <= 18)
                    Label3.Text = Session["user_name"].ToString() + "妹妹，你好";
            }
            Button1.Text = "登出";
        Label11.Text = Session["user_account"].ToString();
        }
        else
        {
            Response.Write("<script>alert('尚未登入，無法查看帳號資訊');location.href='prog1.aspx';</script>");
        }
        Button1.OnClientClick = "return confirm('確定要登出嗎?');";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        Response.Redirect("prog1.aspx");
    }

    protected void DetailsView1_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
    {
        GridView1.DataSourceID = "SqlDataSource1";
        GridView1.DataBind();
        GridView1.Visible = false;
        if (GridView1.Rows.Count != 0)
        {
            string name = GridView1.Rows[0].Cells[1].Text.ToString().Trim();
            string gender = GridView1.Rows[0].Cells[2].Text.ToString().Trim();
            string birth = GridView1.Rows[0].Cells[3].Text.ToString().Trim();
            string phone = GridView1.Rows[0].Cells[4].Text.ToString().Trim();
            string address = GridView1.Rows[0].Cells[5].Text.ToString().Trim();
            string account = GridView1.Rows[0].Cells[6].Text.ToString().Trim();
            string pwd = GridView1.Rows[0].Cells[7].Text.ToString().Trim();

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

        }
        Response.Redirect("prog4.aspx");
    }

    protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {

    }
}