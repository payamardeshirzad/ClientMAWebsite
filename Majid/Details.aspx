<%@	Page Language="C#" MasterPageFile="~/Default.master" Title="Your Name Here | Picture Details"
	CodeFile="Details.aspx.cs" Inherits="Details_aspx" %>

<asp:content id="Content1" contentplaceholderid="Main" runat="server">

	<div class="shim solid">
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <span style="font-size: 10pt">������ �� ������� ��������<br />
            <br />
        </span>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
            AutoGenerateColumns="False" DataKeyNames="Bookname" DataSourceID="SqlDataSource1"
            EmptyDataText="There are no data records to display." Font-Size="8pt" Height="262px"
            Width="661px">
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='Data Source=.\SQLEXPRESS;AttachDbFilename="c:\majid\App_Data\mainlibrary.mdf";Integrated Security=True;Connect Timeout=30;User Instance=True'
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
        <br />
        <br />
        <br />
        <br />
        <br />
    </div>
	
	<div class="page" id="details">
        &nbsp;</div>
	
	<asp:ObjectDataSource ID="ObjectDataSource1" Runat="server" TypeName="PhotoManager" 
		SelectMethod="GetPhotos">
		<SelectParameters>
			<asp:QueryStringParameter Name="AlbumID" Type="Int32" QueryStringField="AlbumID" DefaultValue="0"/>
		</SelectParameters>
	</asp:ObjectDataSource>
	
</asp:content>
