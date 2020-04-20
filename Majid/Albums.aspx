<%@ Page Language="C#" MasterPageFile="~/Default.master" Title="Your Name Here | Albums"
    CodeFile="Albums.aspx.cs" Inherits="Albums_aspx" %>

<asp:content id="Content1" contentplaceholderid="Main" runat="server">

    <div class="shim gradient"></div>

    <div class="page" id="albums">

        <h3 style="text-align: center">
            صفحه انجام عملیات ویرایش برروی یک کتاب</h3>
        <p style="text-align: right">
            ابتدا نام کتابی که می خواهید عملیات ویرایش برروی آن انجام گردد را وارد نموده سپس
            اطلاعات جدید را برروی فیلدهای باقیمانده وارد نمایید. در نهایت برروی دکمه ایجاد تغییرات
            کلیک نموده تا عملیات ویرایش تکمیل گردد.&nbsp;
            <table style="width: 653px">
                <tr>
                    <td style="width: 110px">
                    </td>
                    <td align="center" style="width: 159px">
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td>
                    <td style="width: 58px">
                        <asp:Label ID="Label7" runat="server" Text="لطفا نام کتاب را جهت انجام عملیات ویرایش وارد نمایید" Width="201px"></asp:Label></td>
                </tr>
                <tr>
                    <td style="width: 110px">
                    </td>
                    <td align="center" style="width: 159px; text-align: left;">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                    <td style="width: 58px; text-align: center;">
                        <asp:Label ID="Label1" runat="server" Text="نام کتاب"></asp:Label></td>
                </tr>
                <tr>
                    <td style="width: 110px; height: 26px">
                    </td>
                    <td align="center" style="width: 159px; height: 26px; text-align: left;">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                    <td style="width: 58px; height: 26px; text-align: center;">
                        <asp:Label ID="Label2" runat="server" Text="نام نویسنده"></asp:Label></td>
                </tr>
                <tr>
                    <td style="width: 110px">
                    </td>
                    <td align="center" style="width: 159px">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                    <td style="width: 58px; text-align: center;">
                        <asp:Label ID="Label3" runat="server" Text="شابک"></asp:Label></td>
                </tr>
                <tr>
                    <td style="width: 110px">
                    </td>
                    <td align="center" style="width: 159px">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                    <td style="width: 58px; text-align: center;">
                        <asp:Label ID="Label4" runat="server" Text="ناشر"></asp:Label></td>
                </tr>
                <tr>
                    <td style="width: 110px">
                    </td>
                    <td align="center" style="width: 159px">
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
                    <td style="width: 58px; text-align: center;">
                        <asp:Label ID="Label5" runat="server" Text="تعداد صفحه"></asp:Label></td>
                </tr>
                <tr>
                    <td style="width: 110px">
                    </td>
                    <td align="center" style="width: 159px">
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
                    <td style="width: 58px; text-align: center;">
                        <asp:Label ID="Label6" runat="server" Text="ویرایش"></asp:Label></td>
                </tr>
                <tr>
                    <td style="width: 110px; height: 166px">
                    </td>
                    <td align="center" style="width: 159px; height: 166px">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="ایجاد تغییرات" /></td>
                    <td style="width: 58px; height: 166px">
                    </td>
                </tr>
            </table>
            </p>
        <p style="text-align: right">
            &nbsp;&nbsp;
        </p>
        <p style="text-align: right">
            &nbsp;</p>
        <p style="text-align: right">
            &nbsp;
        </p>
        <p style="text-align: right">
            &nbsp;
        </p>
        <p style="text-align: right">
            &nbsp;
        </p>
        <hr />
    
    </div>

	<asp:ObjectDataSource ID="ObjectDataSource1" Runat="server" TypeName="PhotoManager" 
		SelectMethod="GetAlbums">
	</asp:ObjectDataSource>
    

</asp:content>