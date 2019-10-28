<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="RamPark.Register" %>

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
            <div style="text-align:center">
                <asp:Label ID="Label12" CssClass="label-breaker-style" runat="server" Text="Personal Information"></asp:Label>
            </div>
            <asp:Label ID="emailLbl" CssClass="label-style" runat="server" Text="Email"></asp:Label>
            <input id="emailTb" class="input-style" type="text" />
            <asp:Label ID="Label2" CssClass="label-style" runat="server" Text="RAM ID"></asp:Label>
            <input id="ramIDTb" class="input-style" type="text" />
            <asp:Label ID="Label1" CssClass="label-style" runat="server" Text="First Name"></asp:Label>
            <input id="fNameTb" class="input-style" type="text" />
            <asp:Label ID="Label3" CssClass="label-style" runat="server" Text="Last Name"></asp:Label>
            <input id="lNameTb" class="input-style" type="text" />
            <asp:Label ID="usernameLbl" CssClass="label-style" runat="server" Text="Password"></asp:Label>
            <input id="passwordTb" class="input-style" type="password" />
            <asp:Label ID="Label4" CssClass="label-style" runat="server" Text="Repeat Password"></asp:Label>
            <input id="repeatPasswordTb" class="input-style" type="password" />
            <div style="text-align:center">
                <asp:Label ID="Label5" CssClass="label-breaker-style" runat="server" Text="Vehicle Information"></asp:Label>
            </div>
            <asp:Label ID="Label6" CssClass="label-style" runat="server" Text="VIN"></asp:Label>
            <input id="vinTb" class="input-style" type="text" />
            <asp:Label ID="Label11" CssClass="label-style" runat="server" Text="License Plate Number"></asp:Label>
            <input id="licensePlateTb" class="input-style" type="text" />
            <asp:Label ID="Label7" CssClass="label-style" runat="server" Text="Make"></asp:Label>
            <input id="vehicleMakeTb" class="input-style" type="text" />
            <asp:Label ID="Label8" CssClass="label-style" runat="server" Text="Model"></asp:Label>
            <input id="vehicleModelTb" class="input-style" type="text" />
            <asp:Label ID="Label9" CssClass="label-style" runat="server" Text="Year"></asp:Label>
            <input id="vehicleYearTb" class="input-style" type="text" />
            <asp:Label ID="Label10" CssClass="label-style" runat="server" Text="Color"></asp:Label>
            <input id="vehicleColorTb" class="input-style" type="text" />
            <asp:Button ID="RegisterBtn" class="button-style" type="Submit" runat="server" Text="Register" OnClick="registerBtn_Click" />
            <asp:Button ID="cancelBtn" class="button-style" type="Submit" runat="server" Text="Cancel" OnClick="cancelBtn_Click" />
        </div>
    </form>
</body>
</html>