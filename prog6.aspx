<%@ Page Language="C#" AutoEventWireup="true" CodeFile="prog6.aspx.cs" Inherits="prog6" %>

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
                    <asp:MenuItem Text="線上掛號" Value="線上掛號" NavigateUrl="prog5.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="[查詢掛號]" Value="查詢掛號" NavigateUrl="prog6.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="掛號紀錄" Value="掛號紀錄" NavigateUrl="prog7.aspx"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="prog3.aspx" Text="回到首頁" Value="回到首頁"></asp:MenuItem>
                </Items>
                <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
                <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <StaticSelectedStyle BackColor="#5D7B9D" />
            </asp:Menu>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:1071netdbConnectionString %>" SelectCommand="SELECT * FROM [s1061746FINAL_2] WHERE (([ident] = @ident) AND ([date] &gt;= @date))" DeleteCommand="DELETE FROM [s1061746FINAL_2] WHERE [Id] = @Id" InsertCommand="INSERT INTO [s1061746FINAL_2] ([userID], [ident], [date], [time]) VALUES (@userID, @ident, @date, @time)" UpdateCommand="UPDATE [s1061746FINAL_2] SET [userID] = @userID, [ident] = @ident, [date] = @date, [time] = @time WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="userID" Type="String" />
                        <asp:Parameter Name="ident" Type="String" />
                        <asp:Parameter Name="date" Type="String" />
                        <asp:Parameter Name="time" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="ident" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="Label8" Name="date" PropertyName="Text" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="userID" Type="String" />
                        <asp:Parameter Name="ident" Type="String" />
                        <asp:Parameter Name="date" Type="String" />
                        <asp:Parameter Name="time" Type="String" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:1071netdbConnectionString %>" SelectCommand="SELECT * FROM [s1061746FINAL_2] WHERE ([Id] = @Id)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Label11" Name="Id" PropertyName="Text" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:1071netdbConnectionString %>" SelectCommand="SELECT * FROM [s1061746FINAL_2] WHERE ([Id] = @Id)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Label11" Name="Id" PropertyName="Text" Type="Int32" />
                    </SelectParameters>
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
        <div style="position:absolute; width: 76%; height: 530px; top: 222px; right: 10px; background-color: #F7F6F3;">
    <div style=" width: 870px; height: 500px;padding:20px 60px 30px 60px;"/>
            請輸入身分證字號來查詢您未到期的預約掛號。<br />
            <br />
            如果要取消掛號，請在查詢出結果之後，點選刪除鍵。<br />
            <br />
                
                <asp:Image ID="Image3" runat="server" ImageUrl="images/a1.jpg" Width="20px" />
                
            身分證字號:&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="查詢" />
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="以下是查詢結果:" Visible="False"></asp:Label>
            <asp:Label ID="Label5" runat="server" ForeColor="Red"></asp:Label>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Visible="False" BorderColor="#ADA485" BorderStyle="Solid" CellPadding="4" ForeColor="#333333" GridLines="None" Width="50%" AllowSorting="True" OnRowDeleted="GridView1_RowDeleted1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" PageSize="5">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" OnClientClick="return confirm('確認要刪除嗎？');" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" Visible="False" />
                    <asp:BoundField DataField="userID" HeaderText="userID" SortExpression="userID" Visible="False" />
                    <asp:BoundField DataField="ident" HeaderText="ident" SortExpression="ident" Visible="False" />
                    <asp:BoundField DataField="date" HeaderText="掛號日期" SortExpression="date" />
                    <asp:BoundField DataField="time" HeaderText="時段" SortExpression="time" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#7C6F57" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#7C6F57" Font-Bold="True" ForeColor="White" HorizontalAlign="Left" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FDD01C" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <div style="position:absolute;width:200px;height:200px;right:17%;top:220px;">
                <asp:Label ID="Label9" runat="server" Visible="False">您已經在</asp:Label>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BorderColor="#F7F6F3" DataKeyNames="Id" DataSourceID="SqlDataSource2" Visible="False">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" Visible="False" />
                        <asp:BoundField DataField="userID" HeaderText="userID" SortExpression="userID" Visible="False" />
                        <asp:BoundField DataField="ident" HeaderText="ident" SortExpression="ident" Visible="False" />
                        <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                        <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" Visible="False" />
                    </Columns>
                </asp:GridView>
                <asp:Label ID="Label12" runat="server" Text="的" Visible="False"></asp:Label>
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BorderColor="#F7F6F3" DataKeyNames="Id" DataSourceID="SqlDataSource3" Visible="False">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" Visible="False" />
                        <asp:BoundField DataField="userID" HeaderText="userID" SortExpression="userID" Visible="False" />
                        <asp:BoundField DataField="ident" HeaderText="ident" SortExpression="ident" Visible="False" />
                        <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" Visible="False" />
                        <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
                    </Columns>
                </asp:GridView>
                <asp:Label ID="Label13" runat="server" Text="預約了掛號，請準時就診，謝謝。" Visible="False"></asp:Label>
                </div>
            <asp:Label ID="Label7" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label10" runat="server" Font-Size="Small" ForeColor="#7C6F57" Text="早上&amp;nbsp[09:00~12:00]&lt;br&gt;下午&amp;nbsp[14:00~17:00]&lt;br&gt;晚上&amp;nbsp[18:30~22:00]" Visible="False"></asp:Label>
            </div>
        </div>
    <div style="padding: 10px 0px 10px 0px;"><asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="images/a7.gif" PostBackUrl="http://dph.tycg.gov.tw/" AlternateText="桃園市政府衛生局" BorderColor="#7C6F57" BorderStyle="Solid" Width="230px" OnClick="ImageButton2_Click" />
</div>
            <br />
        </div></div>
        <asp:Label ID="Label6" runat="server" Visible="False"></asp:Label>
        <asp:Label ID="Label8" runat="server" Visible="False"></asp:Label>
        <p>
            <asp:Label ID="Label11" runat="server" Visible="False"></asp:Label>
        </p>
    </form>
</body>
</html>

