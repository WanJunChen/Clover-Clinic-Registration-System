<%@ Page Language="C#" AutoEventWireup="true" CodeFile="prog8.aspx.cs" Inherits="_Default" %>

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
                    <asp:MenuItem Text="[帳號管理]" Value="帳號管理" NavigateUrl="prog4.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="線上掛號" Value="線上掛號" NavigateUrl="prog5.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="查詢掛號" Value="查詢掛號" NavigateUrl="prog6.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="掛號紀錄" Value="掛號紀錄" NavigateUrl="prog7.aspx"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="prog3.aspx" Text="回到首頁" Value="回到首頁"></asp:MenuItem>
                </Items>
                <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
                <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <StaticSelectedStyle BackColor="#5D7B9D" />
            </asp:Menu>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:1071netdbConnectionString %>" SelectCommand="SELECT * FROM [s1061746FINAL] WHERE ([account] = @account)" DeleteCommand="DELETE FROM [s1061746FINAL] WHERE [Id] = @Id" InsertCommand="INSERT INTO [s1061746FINAL] ([name], [gender], [birthday], [phone], [address], [account], [password]) VALUES (@name, @gender, @birthday, @phone, @address, @account, @password)" UpdateCommand="UPDATE [s1061746FINAL] SET [name] = @name, [gender] = @gender, [birthday] = @birthday, [phone] = @phone, [address] = @address, [account] = @account, [password] = @password WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="gender" Type="String" />
                        <asp:Parameter Name="birthday" Type="String" />
                        <asp:Parameter Name="phone" Type="String" />
                        <asp:Parameter Name="address" Type="String" />
                        <asp:Parameter Name="account" Type="String" />
                        <asp:Parameter Name="password" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Label11" Name="account" PropertyName="Text" Type="String" />
                    </SelectParameters>
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
        <div style="position:absolute; width: 76%; height: 1210px; top: 222px; right: 10px; background-color: #F7F6F3;">
            <div style=" width: 870px; height: 1210px;padding:20px 60px 30px 60px"/>
                <div>
                </div>
            <div>
                </div>
<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" CellSpacing="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" DefaultMode="Edit" ForeColor="#333333" GridLines="None" Height="50px" OnItemUpdated="DetailsView1_ItemUpdated" style="margin-right: 82px"  HeaderText="更改資料" BackColor="#F7F6F3" OnPageIndexChanging="DetailsView1_PageIndexChanging">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                    <EditRowStyle BackColor="#999999" />
                    <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" Visible="False" />
                        <asp:BoundField DataField="name" HeaderText="姓名" SortExpression="name" />
                        <asp:BoundField DataField="gender" HeaderText="性別" SortExpression="gender" />
                        <asp:BoundField DataField="birthday" HeaderText="生日" SortExpression="birthday" />
                        <asp:BoundField DataField="phone" HeaderText="電話" SortExpression="phone" />
                        <asp:BoundField DataField="address" HeaderText="地址" SortExpression="address" />
                        <asp:BoundField DataField="account" HeaderText="帳號" SortExpression="account" />
                        <asp:BoundField DataField="password" HeaderText="密碼" SortExpression="password" />
                        <asp:CommandField ButtonType="Button" ShowEditButton="True" UpdateText="送出" />
                    </Fields>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#7C6F57" Font-Bold="True" ForeColor="#F7F6F3" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#003366" ForeColor="#7C6F57" HorizontalAlign="Center" VerticalAlign="Middle" Width="150px" />
                </asp:DetailsView>
                
                <br />
            <p>
                
                <asp:Image ID="Image3" runat="server" ImageUrl="images/a1.jpg" Width="20px" />
                
                <strong>&nbsp;個人資訊</strong></p>
                <br />
                姓名:&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server"></asp:Label>
                <br />
                性別:&nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server"></asp:Label>
                <br />
                生日:&nbsp;&nbsp;
                <asp:Label ID="Label6" runat="server"></asp:Label>
                <br />
                電話:&nbsp;&nbsp;
                <asp:Label ID="Label7" runat="server"></asp:Label>
                <br />
                地址:&nbsp;&nbsp;
                <asp:Label ID="Label8" runat="server"></asp:Label>
                <br />
                <br />
                <br /><p><strong>
                    <asp:Image ID="Image4" runat="server" ImageUrl="images/a1.jpg" Width="20px" />
&nbsp;帳戶</strong></p><br />帳號:&nbsp;&nbsp;
                <asp:Label ID="Label9" runat="server"></asp:Label>
                <br />密碼:&nbsp;&nbsp;
                <asp:Label ID="Label10" runat="server"></asp:Label>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Visible="False">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                        <asp:BoundField DataField="birthday" HeaderText="birthday" SortExpression="birthday" />
                        <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                        <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                        <asp:BoundField DataField="account" HeaderText="account" SortExpression="account" />
                        <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                    </Columns>
                </asp:GridView>
                <br />
                </div>
                </div>
        
            
    <div style="padding: 10px 0px 10px 0px;"><asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="images/a7.gif" PostBackUrl="http://dph.tycg.gov.tw/" AlternateText="桃園市政府衛生局" BorderColor="#7C6F57" BorderStyle="Solid" Width="230px" />
</div>
            <br />
        </div></div>
        <asp:Label ID="Label11" runat="server" Visible="False"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:1071netdbConnectionString %>" DeleteCommand="DELETE FROM [s1061746FINAL] WHERE [Id] = @Id" InsertCommand="INSERT INTO [s1061746FINAL] ([name], [gender], [birthday], [phone], [address], [account], [password]) VALUES (@name, @gender, @birthday, @phone, @address, @account, @password)" SelectCommand="SELECT * FROM [s1061746FINAL]" UpdateCommand="UPDATE [s1061746FINAL] SET [name] = @name, [gender] = @gender, [birthday] = @birthday, [phone] = @phone, [address] = @address, [account] = @account, [password] = @password WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="birthday" Type="String" />
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="account" Type="String" />
                <asp:Parameter Name="password" Type="String" />
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
    </form>
</body>
</html>
