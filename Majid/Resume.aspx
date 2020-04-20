<%@ Page Language="C#" MasterPageFile="~/Default.master" Title="Your Name Here | Resume"
    CodeFile="Resume.aspx.cs" Inherits="Resume_aspx" %>

<asp:content id="Content1" contentplaceholderid="Main" runat="server">

    <div class="shim column"></div>
    
    <div class="page" id="resume" style="text-align: right">
        <div class="resume">
        </div>
			<h3 style="text-align: right" class="resume">
                بخش اضافه نمودن کتاب به کتابخانه&nbsp;</h3>
			<p style="text-align: right" class="resume">
                نحوه اضافه نمودن کتاب به کتابخانه</p>
        
        <p>
                ابتدا اطلاعات مربوط به کتاب را به طور کامل در فرم مربوطه وارد نمایید</p>
			<p class="resume"><a href="#"></a></p><div class="resume" style="text-align: right">
                هم اکنون با کلیک برروی گزینه "اضافه نمودن" میتوانید اطلاعات کتاب جدید را به کتابخانه
                اضافه نمایید</div>
			<div class="resume">
                <br />
                &nbsp;</div>
			<p class="first" style="text-align: right">
                <table>
                    <tr>
                        <td align="center" style="width: 82px; height: 60px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                                ErrorMessage="لطفا فیلد مربوطه را پرنمایید"></asp:RequiredFieldValidator></td>
                        <td align="center" style="width: 245px; height: 60px">
                            <asp:TextBox ID="TextBox1" runat="server" Width="209px"></asp:TextBox></td>
                        <td align="center" style="width: 100px; height: 60px">
                <asp:Label ID="Label1" runat="server" Text="          نام کتاب     "></asp:Label></td>
                    </tr>
                    <tr>
                        <td align="center" style="width: 82px; height: 60px">
                        </td>
                        <td align="center" style="width: 245px; height: 60px">
            <asp:TextBox ID="TextBox2" runat="server" Width="210px"></asp:TextBox></td>
                        <td align="center" style="width: 100px; height: 60px">
            <asp:Label ID="Label2" runat="server" Text="نام نویسنده"></asp:Label></td>
                    </tr>
                    <tr>
                        <td align="center" style="width: 82px; height: 60px">
                        </td>
                        <td align="center" style="width: 245px; height: 60px">
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                        <td align="center" style="width: 100px; height: 60px">
            <asp:Label ID="Label4" runat="server" Text="شابک"></asp:Label></td>
                    </tr>
                    <tr>
                        <td align="center" style="width: 82px; height: 60px">
                        </td>
                        <td align="center" style="width: 245px; height: 60px">
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
                        <td align="center" style="width: 100px; height: 60px">
            <asp:Label ID="Label5" runat="server" Text="ناشر"></asp:Label></td>
                    </tr>
                    <tr>
                        <td align="center" style="width: 82px; height: 60px">
                        </td>
                        <td align="center" style="width: 245px; height: 60px">
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
                        <td align="center" style="width: 100px; height: 60px">
            <asp:Label ID="Label6" runat="server" Text="تعداد صفحه"></asp:Label></td>
                    </tr>
                    <tr>
                        <td align="center" style="width: 82px; height: 60px">
                        </td>
                        <td align="center" style="width: 245px; height: 60px">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                        <td align="center" style="width: 100px; height: 60px">
            <asp:Label ID="Label3" runat="server" Text="ویرایش"></asp:Label></td>
                    </tr>
                    <tr>
                        <td align="center" style="width: 82px; height: 60px">
                        </td>
                        <td align="center" style="width: 245px; height: 60px">
                            <asp:Button ID="Button1" runat="server" Text="اضافه نمودن" OnClick="Button1_Click" /></td>
                        <td align="center" style="width: 100px; height: 60px">
                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="پاک کردن" /></td>
                    </tr>
                </table>
            </p>
        <p class="first" style="text-align: right">
            &nbsp;</p>
        
    </div>
      
</asp:content>
