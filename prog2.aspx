<%@ Page Language="C#" AutoEventWireup="true" CodeFile="prog2.aspx.cs" Inherits="prog2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<style type="text/css">
       body {background-image: url(images/a4.jpg);
             background-repeat: no-repeat;
             background-size: cover;}
    </style>
<body>
    <form id="form1" runat="server">

        <div>

            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Timer ID="Timer1" runat="server" Interval="1000">
                    </asp:Timer>
                    <asp:Label ID="Label2" runat="server" ForeColor="White"></asp:Label>
                </ContentTemplate>
            </asp:UpdatePanel>
        
        <div style="text-align:center;">
                <asp:Image ID="Image2" runat="server" ImageUrl="images/a3.png" Width="200px" />
                <br />
            <asp:Label ID="Label1" runat="server" BorderColor="#756B4F" Font-Bold="True" ForeColor="#F7F6F3" Text="幸運草診所   線上掛號系統" Font-Overline="False" Font-Size="X-Large" Font-Names="微軟正黑體"></asp:Label>
                <br />
                <asp:Image ID="Image1" runat="server" ImageUrl="images/a2.png" Width="200px" />

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:1071netdbConnectionString %>" InsertCommand="INSERT INTO [s1061746FINAL] ([name], [gender], [birthday], [phone], [address], [account], [password]) VALUES (@name, @gender, @birthday, @phone, @address, @account, @password)" SelectCommand="SELECT * FROM [s1061746FINAL]" DeleteCommand="DELETE FROM [s1061746FINAL] WHERE [Id] = @Id" UpdateCommand="UPDATE [s1061746FINAL] SET [name] = @name, [gender] = @gender, [birthday] = @birthday, [phone] = @phone, [address] = @address, [account] = @account, [password] = @password WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="name" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList1" Name="gender" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="TextBox2" Name="birthday" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox3" Name="phone" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox4" Name="address" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox5" Name="account" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox6" Name="password" PropertyName="Text" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="gender" Type="String" />
                    <asp:Parameter Name="birthday" Type="String" />
                    <asp:Parameter Name="phone" Type="String" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="account" Type="String" />
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

                <br />
            <asp:Menu ID="Menu1" runat="server" BackColor="#F7F6F3" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="Medium" ForeColor="#7C6F57" Orientation="Horizontal" RenderingMode="Table" StaticSubMenuIndent="10px" Width="100%" Font-Bold="False" Height="50px">
                <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
                <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <DynamicMenuStyle BackColor="#F7F6F3" />
                <DynamicSelectedStyle BackColor="#5D7B9D" />
                <Items>
                    <asp:MenuItem Text="帳號管理" Value="帳號管理" NavigateUrl="prog4.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="線上掛號" Value="線上掛號" NavigateUrl="prog5.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="查詢掛號" Value="查詢掛號" NavigateUrl="prog6.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="掛號紀錄" Value="掛號紀錄" NavigateUrl="prog7.aspx"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="prog1.aspx" Text="回到首頁" Value="回到首頁"></asp:MenuItem>
                </Items>
                <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
                <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <StaticSelectedStyle BackColor="#5D7B9D" />
            </asp:Menu>
            <br />
        </div></div>
        <div style=" width:100%;height:500px; background-color:#F7F6F3;">
        <div style="padding: 15px 65px 15px 65px; position:static; margin: auto 30% auto 30%;">

            <p>
                <asp:Image ID="Image3" runat="server" ImageUrl="images/a1.jpg" Width="20px" />
                <strong>&nbsp;個人資訊</strong></p><br />

        姓名:<asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        <br />
        性別:<asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>請選擇</asp:ListItem>
                <asp:ListItem>男性</asp:ListItem>
                <asp:ListItem>女性</asp:ListItem>
        </asp:DropDownList>
        <br />
        生日:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:Label ID="Label6" runat="server" ForeColor="Red"></asp:Label>
            <br />
            <asp:Label ID="Label7" runat="server" Text="(範例:19930309)"></asp:Label>
            <br />
        電話:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        地址:<asp:TextBox ID="TextBox4" runat="server" Width="218px"></asp:TextBox>
        <br />
            <asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label><br /><p><strong>
                <asp:Image ID="Image4" runat="server" ImageUrl="images/a1.jpg" Width="20px" />
&nbsp;帳號密碼設定</strong><p/>
        <br />
        新帳號:<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label>
        <br />
        新密碼:<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <asp:Label ID="Label5" runat="server" ForeColor="Red"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="重新填寫" OnClick="Button1_Click" BackColor="#F7F6F3" BorderColor="White" ForeColor="#7C6F57" />
        <asp:Button ID="Button2" runat="server" Text="送出" BackColor="#F7F6F3" ForeColor="#7C6F57" BorderColor="White" OnClick="Button2_Click" />

            <br />
            
    </div></div>
        <br />
    </form>
    </body>
</html>

