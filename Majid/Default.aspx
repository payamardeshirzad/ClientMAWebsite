<%@	Page Language="C#" MasterPageFile="~/Default.master" Title="Your Name Here | Home"
	CodeFile="Default.aspx.cs" Inherits="Default_aspx" %>

<asp:content id="Content1" contentplaceholderid="Main" runat="server">

	<div class="shim column"></div>
	
	<div class="page" id="home">
		<div id="sidebar">
			<asp:loginview id="LoginArea" runat="server">
				<AnonymousTemplate>
					<asp:login id="Login1" runat="server">
						<layouttemplate>
							<div class="login">
								<h4>Login to Site</h4>
								<asp:label runat="server" id="UserNameLabel" CssClass="label" associatedcontrolid="UserName">User Name</asp:label>
								<asp:textbox runat="server"	id="UserName" cssclass="textbox" accesskey="u" />
								<asp:requiredfieldvalidator	runat="server" id="UserNameRequired" controltovalidate="UserName" validationgroup="Login1" errormessage="User Name is required." tooltip="User Name	is required." >*</asp:requiredfieldvalidator>
								<asp:label runat="server" id="PasswordLabel" CssClass="label" associatedcontrolid="Password">Password</asp:label>
								<asp:textbox runat="server"	id="Password" textmode="Password" cssclass="textbox" accesskey="p" />
								<asp:requiredfieldvalidator	runat="server" id="PasswordRequired" controltovalidate="Password" validationgroup="Login1" tooltip="Password is	required." >*</asp:requiredfieldvalidator>
								<div><asp:checkbox runat="server" id="RememberMe" text="Remember me	next time"/></div>
								<asp:imagebutton runat="server"	id="LoginButton" CommandName="Login" AlternateText="login" skinid="login" CssClass="button"/>
								or
								<a href="register.aspx"	class="button"><asp:image id="Image1" runat="server"  AlternateText="create	a new account" skinid="create"/></a>
								<p><asp:literal	runat="server" id="FailureText"	enableviewstate="False"></asp:literal></p>
							</div>
						</layouttemplate>
					</asp:login>
				</anonymoustemplate>
				<LoggedInTemplate>
					<h4><asp:loginname id="LoginName1" runat="server" formatstring="Welcome	{0}!" /></h4>
				</LoggedInTemplate>
			</asp:loginview>
			<hr />
			<h4>
                &nbsp;</h4>
			<p>
                &nbsp;</p>
		</div>
			<h3 style="text-align: right">
                به سایت شخصی مجید علی بابایی خوش آمدید</h3>
			<p style="text-align: right">
                این وب سایت تست و توسعه یک بانک اطلاعاتی به نام کتابخانه تهیه و ایجاد گردیده است.
                دراین بانک اطلاعاتی تمامی امکانات موجود برای کار با یک پایگاه داده قرارداده شده
                است که به شرح هریک می پردازم</p><p style="text-align: right">
                اضافه کردن: در صفحه مربوط به اضافه نمودن میتوان با وارد کردن اطلاعات کامل در فرم
                موجود و کلیک برروی دکمه اضافه نمودن یک رکورد جدید در داخل کتابخانه اضافه نمود</p>
        <p style="text-align: right">
            مشاهده کل کتابخانه: در این صفحه میتوانید تمامی کتابهای موجود در کتابخانه را مشاهده
            نموده و در عین حال تغییرات لازم اعم از حذف و ویرایش برروی اطلاعات موجود را انجام
            داد</p>
        <p style="text-align: right">
            حذف کتاب از کتابخانه: در صفحه مربوط به حذف کتاب میتوان تنها با ورود نام کتاب و کلیک
            برروی گزینه حذف نمودن کتاب مورد نظر را از بانک حذف نمود</p>
        <p style="text-align: right">
            جستجوی کتاب در کتابخانه: در این قسمت تنها کافی است نام کتاب موردنظر را وارد نموده
            تا در صورت وجود کتاب مورد نظر در بانک موجود اطلاعات مربوط به آن نمایش داده شود</p>
        <p style="text-align: right">
            <asp:Label ID="Label1" runat="server" Text="با تشکر از استاد راهنما جناب مهندس سالاری"
                Width="455px"></asp:Label>&nbsp;</p>
        <div>
			<hr	/>
        </div>
        <div>
            &nbsp;</div>
			<div id="coollinks">
				<h4 style="text-align: right">
                    لینکهای مهم</h4>
					<p style="text-align: right">
                        http://www.gutenberg.org/</p>
					<p style="text-align: right">
                        &nbsp;http://www.baen.com/library/</p>
					<p style="text-align: right">
                        http://www.bookspot.com/<a href="#"></a></p>
					<p style="text-align: right">
                        http://www.online-literature.com/<a href="#"></a></p>
					<p style="text-align: right">
                        http://www.intratext.com/</p>
                <p style="text-align: right">
                    http://www.infomotions.com/alex/</p>
                <p style="text-align: right">
                    http://www.literature.org/</p>
			</div><div>
			<hr	/>
		</div>
	</div>

	<asp:ObjectDataSource ID="ObjectDataSource1" Runat="server" TypeName="PhotoManager" 
		SelectMethod="GetPhotos">
	</asp:ObjectDataSource>

</asp:content>
