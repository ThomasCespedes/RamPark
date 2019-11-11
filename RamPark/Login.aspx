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
            <asp:Label ID="emailLbl" CssClass="label-style" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="emailTb" CssClass="input-style" runat="server"></asp:TextBox>
            <asp:Label ID="passwordLbl" CssClass="label-style" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="passwordTb" CssClass="input-style" runat="server" TextMode="Password"></asp:TextBox>
            <asp:Label ID="ErrorLabel" CssClass="error" runat="server" Text="Username or password is incorrect" Visible="False"></asp:Label>

            <asp:Button ID="loginBtn" class="button-style" type="Submit" runat="server" Text="Login" OnClick="loginBtn_Click" />
            <asp:Button ID="registerBtn" class="button-style" type="Submit" runat="server" Text="Register" OnClick="registerBtn_Click" />
        </div>
    </form>
</body>
</html>