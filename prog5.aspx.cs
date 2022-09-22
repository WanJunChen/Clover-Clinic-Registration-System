using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class prog5 : System.Web.UI.Page
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
            Label5.Text = Session["user_id"].ToString();
        }
        else
        {
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

    protected void Button2_Click(object sender, EventArgs e)
    {
        if(Session["login"]=="ok")
        {
            if (Calendar1.SelectedDate.Date < DateTime.Today)
                Label6.Visible = true;
            else
                Label6.Visible = false;
            if (TextBox1.Text == "")
                Label8.Visible = true;
            else
                Label8.Visible = false;
            if (DropDownList1.SelectedValue == "請選擇")
                Label9.Visible = true;
            else
                Label9.Visible = false;

            if (Label6.Visible == false && Label8.Visible == false && Label9.Visible == false)
            {
                Label7.Text = Calendar1.SelectedDate.ToShortDateString();
                SqlDataSource2.Insert();
                Response.Write("<script>alert('掛號成功');location.href='prog5.aspx';</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('請先登入');location.href='prog1.aspx';</script>");
        }


    }
}