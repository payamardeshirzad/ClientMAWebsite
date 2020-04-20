<%@ Page Language="C#" MasterPageFile="~/Default.master" Title="Your Name Here | Links"
    CodeFile="Links.aspx.cs" Inherits="Links_aspx" %>

<asp:content id="Content1" contentplaceholderid="Main" runat="server">

    <div class="shim column"></div>
    
    <div class="page" id="links">
        <div id="content">
            <h3 style="text-align: center">
                حذف از بانک اطلاعاتی کتابخانه</h3>
            <p style="text-align: right">
                جهت حذف یک کتاب از کتابخانه تنها کافی است نام کتاب مورد نظر را وارد نمایید تا در
                صورت وجود کتاب در پایگاه داده کتاب مورد نظر از بانک حذف گردد</p>
            <p style="text-align: right">
                <asp:TextBox ID="TextBox1" runat="server" Width="233px"></asp:TextBox>
                <asp:Label ID="Label1" runat="server" Text="لطفا نام کتاب مورد نظر را جهت حذف وارد نمایید"></asp:Label></p>
            <p style="text-align: center">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="حذف کتاب" />&nbsp;</p>
        </div>
    </div>
      
</asp:content>
