using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class prog6 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = DateTime.Now.ToString();
        Label8.Text = DateTime.Today.ToShortDateString();
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
            Label6.Text = Session["user_id"].ToString();
        }
        else
        {
            Label3.Text = "你已登出<br>請回到首頁登入";
            Button1.Text = "回首頁";
        }
        GridView2.ShowHeader = false;
        GridView3.ShowHeader = false;
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
        if (Session["login"] == "ok")
        {
            GridView1.DataBind();
            Label4.Visible = true;
            if (GridView1.Rows.Count != 0)
            {
                Label7.Visible = true;
                GridView1.Visible = true;

                

                Label7.Visible = true;
                GridView1.AllowPaging = false;
                GridView1.DataBind();
                Label7.Text = "共有" + GridView1.Rows.Count.ToString() + "筆掛號，每頁5筆。";
                GridView1.AllowPaging = true;
                GridView1.DataBind();
                Label10.Visible = true;
            }

            else
            {
                Label5.Text = "無預約的掛號或是輸入資料錯誤";
                Label7.Visible = false;
                Label10.Visible = false;
            }
        }
        else
        {
            Response.Write("<script>alert('請先登入');location.href='prog1.aspx';</script>");
        }

    }

    protected void GridView1_RowDeleted1(object sender, GridViewDeletedEventArgs e)
    {
        Button2_Click(null, new EventArgs());
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label11.Text = GridView1.SelectedDataKey.Value.ToString();
        GridView2.Visible=true;
        GridView3.Visible = true;
        Label9.Visible = true;
        Label12.Visible = true;
        Label13.Visible = true;
    }

    
}