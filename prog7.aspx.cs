using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class prog7 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = DateTime.Now.ToString();
        if (Session["login"] == "ok")
        {
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
            Label7.Text = Session["user_id"].ToString();

            Label6.Visible = true;
            GridView1.AllowPaging = false;
            GridView1.DataBind();
            Label6.Text = GridView1.Rows.Count.ToString();
            GridView1.AllowPaging = true;
            GridView1.DataBind();

            Label4.Text = Session["user_name"].ToString();
        if (Session["user_gender"].ToString() == "男性")
        {
            if (age > 18)
                Label5.Text = "先生";
            else if (age <= 18)
                Label5.Text = "弟弟";
        }
        else if (Session["user_gender"].ToString() == "女性")
        {
            if (age > 18)
                Label5.Text = "小姐";
            else if (age <= 18)
                Label5.Text = "妹妹";
        }
        }
        else
        {
            Response.Write("<script>alert('請先登入');location.href='prog1.aspx';</script>");
            Label3.Text = "你已登出<br>請回到首頁登入";
            Button1.Text = "回首頁";
        }
        Button1.OnClientClick = "return confirm('確定要登出嗎?');";
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        Response.Redirect("prog1.aspx");
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        
    }
}