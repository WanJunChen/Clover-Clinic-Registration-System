using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class prog2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = DateTime.Now.ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label3.Text = "";
        Label4.Text = "";
        Label5.Text = "";
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        DropDownList1.Text = "請選擇";
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if(TextBox1.Text == "" || DropDownList1.Text == "請選擇" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || TextBox5.Text == "" || TextBox6.Text == ""|| TextBox2.Text.Length != 8)
        {
            if (TextBox1.Text == "" || DropDownList1.Text == "請選擇" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "")
            {
                Label3.Text = "請輸入正確個人資訊";
            }

            if (TextBox5.Text == "")
            {
                Label4.Text = "請輸入帳號";
            }
            else { Label4.Text = ""; }

            if (TextBox6.Text == "")
            {
                Label5.Text = "請輸入密碼";
            }
            else { Label5.Text = ""; }
            if (TextBox2.Text.Length != 8)
            {
                Label6.Text = "生日格式錯誤";
                Label7.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                Label6.Text = "";
                Label7.ForeColor = System.Drawing.Color.Black;
            }

        }
        else
        {
            SqlDataSource1.Insert();
            Response.Write("<script>alert('註冊成功，回到首頁登入');location.href='prog1.aspx';</script>");
        }
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}