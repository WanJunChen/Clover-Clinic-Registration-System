<%@ Page Language="C#" AutoEventWireup="true" CodeFile="prog5.aspx.cs" Inherits="prog5" %>

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
                <br />
            <asp:Menu ID="Menu1" runat="server" BackColor="#F7F6F3" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="Medium" ForeColor="#7C6F57" Orientation="Horizontal" RenderingMode="Table" StaticSubMenuIndent="10px" Width="100%" Font-Bold="False" Height="50px">
                <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
                <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <DynamicMenuStyle BackColor="#F7F6F3" />
                <DynamicSelectedStyle BackColor="#5D7B9D" />
                <Items>
                    <asp:MenuItem Text="帳號管理" Value="帳號管理" NavigateUrl="prog4.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="[線上掛號]" Value="線上掛號" NavigateUrl="prog5.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="查詢掛號" Value="查詢掛號" NavigateUrl="prog6.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="掛號紀錄" Value="掛號紀錄" NavigateUrl="prog7.aspx"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="prog3.aspx" Text="回到首頁" Value="回到首頁"></asp:MenuItem>
                </Items>
                <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
                <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <StaticSelectedStyle BackColor="#5D7B9D" />
            </asp:Menu>
            <br />
        </div></div>
        <div id="account" style="height:140px;width:230px;background-color:#F7F6F3">
            <br />
            &nbsp;&nbsp;
            <center><asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#7C6F57"></asp:Label>
                <br />
            <br />
            &nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" BackColor="#F7F6F3" Width="100px" ForeColor="#7C6F57" OnClick="Button1_Click"/></center>
            </div>
        <div style="position:absolute; width: 76%; height: 500px; top: 222px; right: 10px; background-color: #F7F6F3;">
            <div style=" width: 870px;padding:20px 60px 30px 60px;"/>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:1071netdbConnectionString %>" DeleteCommand="DELETE FROM [s1061746FINAL_2] WHERE [Id] = @Id" InsertCommand="INSERT INTO [s1061746FINAL_2] ([userID], [ident], [date], [time]) VALUES (@userID, @ident, @date, @time)" SelectCommand="SELECT * FROM [s1061746FINAL_2]" UpdateCommand="UPDATE [s1061746FINAL_2] SET [userID] = @userID, [ident] = @ident, [date] = @date, [time] = @time WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:ControlParameter ControlID="Label5" Name="userID" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="TextBox1" Name="ident" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="Label7" Name="date" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="DropDownList1" Name="time" PropertyName="SelectedValue" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="userID" Type="String" />
                        <asp:Parameter Name="ident" Type="String" />
                        <asp:Parameter Name="date" Type="String" />
                        <asp:Parameter Name="time" Type="String" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:Image ID="Image3" runat="server" ImageUrl="images/a1.jpg" Width="15px" />
                身分證字號:&nbsp;
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Label ID="Label8" runat="server" Font-Size="Small" ForeColor="Red" Text="必填" Visible="False"></asp:Label>
                <br />
                <br />
                <asp:Image ID="Image6" runat="server" ImageUrl="images/a1.jpg" Width="15px" />
                掛號日期:<asp:Calendar ID="Calendar1" runat="server" BackColor="#D2ECE1" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="#1C8282" Height="190px" NextPrevFormat="ShortMonth" Width="350px">
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                    <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                    <TodayDayStyle BackColor="#CCCCCC" />
                </asp:Calendar>
                <asp:Label ID="Label6" runat="server" Font-Size="Small" ForeColor="Red" Text="請選擇今天以後的日期&lt;br&gt;" Visible="False"></asp:Label>
                <br />
                <asp:Image ID="Image7" runat="server" ImageUrl="images/a1.jpg" Width="15px" />
                時段:&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>請選擇</asp:ListItem>
                    <asp:ListItem>早上</asp:ListItem>
                    <asp:ListItem>下午</asp:ListItem>
                    <asp:ListItem>晚上</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="Label9" runat="server" Font-Size="Small" ForeColor="Red" Text="請選擇時段" Visible="False"></asp:Label>
                <br />
                <asp:Label ID="Label4" runat="server" Font-Size="Small" ForeColor="#7C6F57" Text="早上&amp;nbsp[09:00~12:00]&lt;br&gt;下午&amp;nbsp[14:00~17:00]&lt;br&gt;晚上&amp;nbsp[18:30~22:00]"></asp:Label>
                <br />
                <br />
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="確認送出" />
            </div>
    </div>
    <div style="padding: 10px 0px 10px 0px;"><asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="images/a7.gif" PostBackUrl="http://dph.tycg.gov.tw/" AlternateText="桃園市政府衛生局" BorderColor="#7C6F57" BorderStyle="Solid" Width="230px" OnClick="ImageButton2_Click" />
</div>
            <br />
        </div></div>
        <asp:Label ID="Label5" runat="server" Visible="False"></asp:Label>
        <asp:Label ID="Label7" runat="server" Visible="False"></asp:Label>
    </form>
</body>
</html>

