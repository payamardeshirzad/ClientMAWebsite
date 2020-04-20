<%@	Page Language="C#" MasterPageFile="~/Default.master" Title="Your Name Here | Photos"
	CodeFile="Photos.aspx.cs" Inherits="Photos_aspx" %>

<asp:content id="Content1" contentplaceholderid="Main" runat="server">
	
	<div class="shim solid"></div> 
	  
	<div class="page" id="photos">
		<div class="buttonbar buttonbar-top">
            <span style="font-size: 14pt"><strong>جستجو در کتابخانه</strong></span><a href="Albums.aspx"></a></div>
        &nbsp;
        <br />
        <br />
        <table style="width: 738px">
            <tr>
                <td style="width: 212px; text-align: center">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="انجام عملیات جستجو" /></td>
                <td style="width: 221px">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="لطفا نام کتاب مورد نظر را جهت جستجو وارد نمایید"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 212px">
                </td>
                <td style="width: 221px">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="نام کتاب"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 212px">
                </td>
                <td style="width: 221px">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="نام نویسنده"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 212px">
                </td>
                <td style="width: 221px">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="شابک"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 212px">
                </td>
                <td style="width: 221px">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="ناشر"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 212px">
                </td>
                <td style="width: 221px">
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="تعداد صفحات"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 212px">
                </td>
                <td style="width: 221px">
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="ویرایش"></asp:Label></td>
            </tr>
        </table>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
            AutoGenerateColumns="False" DataKeyNames="Bookname" DataSourceID="SqlDataSource1"
            EmptyDataText="There are no data records to display." Visible="False">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="Bookname" HeaderText="Bookname" ReadOnly="True" SortExpression="Bookname" />
                <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
                <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
                <asp:BoundField DataField="Publisher" HeaderText="Publisher" SortExpression="Publisher" />
                <asp:BoundField DataField="Pages" HeaderText="Pages" SortExpression="Pages" />
                <asp:BoundField DataField="Edition" HeaderText="Edition" SortExpression="Edition" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='Data Source=.\SQLEXPRESS;AttachDbFilename="C:\Majid\App_Data\mainlibrary.mdf";Integrated Security=True;Connect Timeout=30;User Instance=True'
            DeleteCommand="DELETE FROM [Book] WHERE [Bookname] = @Bookname" InsertCommand="INSERT INTO [Book] ([Bookname], [Author], [ISBN], [Publisher], [Pages], [Edition]) VALUES (@Bookname, @Author, @ISBN, @Publisher, @Pages, @Edition)"
            ProviderName="<%$ ConnectionStrings:mainlibraryConnectionString1.ProviderName %>"
            SelectCommand="SELECT [Bookname], [Author], [ISBN], [Publisher], [Pages], [Edition] FROM [Book]"
            UpdateCommand="UPDATE [Book] SET [Author] = @Author, [ISBN] = @ISBN, [Publisher] = @Publisher, [Pages] = @Pages, [Edition] = @Edition WHERE [Bookname] = @Bookname">
            <DeleteParameters>
                <asp:Parameter Name="Bookname" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Bookname" Type="String" />
                <asp:Parameter Name="Author" Type="String" />
                <asp:Parameter Name="ISBN" Type="String" />
                <asp:Parameter Name="Publisher" Type="String" />
                <asp:Parameter Name="Pages" Type="String" />
                <asp:Parameter Name="Edition" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Author" Type="String" />
                <asp:Parameter Name="ISBN" Type="String" />
                <asp:Parameter Name="Publisher" Type="String" />
                <asp:Parameter Name="Pages" Type="String" />
                <asp:Parameter Name="Edition" Type="String" />
                <asp:Parameter Name="Bookname" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
		<div class="buttonbar">
			<a href="Albums.aspx"></a>
		</div>
	</div>
	
	<asp:ObjectDataSource ID="ObjectDataSource1" Runat="server" TypeName="PhotoManager" 
		SelectMethod="GetPhotos">
		<SelectParameters>
			<asp:QueryStringParameter Name="AlbumID" Type="Int32" QueryStringField="AlbumID" DefaultValue="0"/>
		</SelectParameters>
	</asp:ObjectDataSource>
	
</asp:content>
