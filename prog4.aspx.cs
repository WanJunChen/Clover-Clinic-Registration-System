using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class prog4 : System.Web.UI.Page
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
            Label4.Text = Session["user_name"].ToString();
            Label5.Text = Session["user_gender"].ToString();
            Label6.Text = Session["user_birth"].ToString();
            Label7.Text = Session["user_phone"].ToString();
            Label8.Text = Session["user_address"].ToString();
            Label9.Text = Session["user_account"].ToString();
            Label10.Text = Session["user_pwd"].ToString();

            Label11.Text = Session["user_age"] + "歲";
            if (Session["user_gender"].ToString() == "男性")
            {
                Image5.ImageUrl = "images/a12.png";
            }
            else if (Session["user_gender"].ToString() == "女性")
            {
                Image5.ImageUrl = "images/a13.png";
            }
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

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
    }

}