<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="RamPark.Login" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="CSS/LoginStyle.css" rel="stylesheet"/>
    </head>
<body>
    <form id="form1" runat="server">
        <div class="login-style">
            <img src="Images/logo-login.png" class="image-style" />
            <asp:Label ID="usernameLbl" CssClass="label-style" runat="server" Text="Username"></asp:Label>
            <input id="Text1" class="input-style" type="text" />
            <asp:Label ID="Label2" CssClass="label-style" runat="server" Text="Password"></asp:Label>
            <input id="Text2" class="input-style" type="text" />
            <asp:Button ID="button1" class="button-style" type="Submit" runat="server" Text="Login" OnClick="button1_Click" />
        </div>
    </form>
</body>
</html>