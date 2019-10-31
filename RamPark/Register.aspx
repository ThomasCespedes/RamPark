<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="RamPark.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
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
            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="required" runat="server" ControlToValidate="emailTb" ErrorMessage="*"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email" ControlToValidate="emailTb" CssClass="required" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <asp:TextBox ID="emailTb" CssClass="input-style" runat="server"></asp:TextBox>
            <asp:Label ID="Label2" CssClass="label-style" runat="server" Text="RAM ID"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="required" runat="server" ControlToValidate="ramIdTb" ErrorMessage="*"></asp:RequiredFieldValidator>
            <asp:TextBox ID="ramIdTb" CssClass="input-style" runat="server"></asp:TextBox>
            <asp:Label ID="Label1" CssClass="label-style" runat="server" Text="First Name"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="required" runat="server" ControlToValidate="fNameTb" ErrorMessage="*"></asp:RequiredFieldValidator>
            <asp:TextBox ID="fNameTb" CssClass="input-style" runat="server"></asp:TextBox>
            <asp:Label ID="Label3" CssClass="label-style" runat="server" Text="Last Name"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="required" runat="server" ControlToValidate="lNameTb" ErrorMessage="*"></asp:RequiredFieldValidator>
            <asp:TextBox ID="lNameTb" CssClass="input-style" runat="server"></asp:TextBox>
            <asp:Label ID="Label13" CssClass="label-style" runat="server" Text="Phone Number"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" CssClass="required" runat="server" ControlToValidate="repeatPasswordTb" ErrorMessage="*"></asp:RequiredFieldValidator>
            <asp:TextBox ID="phoneTb" CssClass="input-style" runat="server" TextMode="Phone"></asp:TextBox>
            <asp:Label ID="Label155" CssClass="label-style" runat="server" Text="Password"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" CssClass="required" runat="server" ControlToValidate="passwordTb" ErrorMessage="*"></asp:RequiredFieldValidator>
            <asp:TextBox ID="passwordTb" CssClass="input-style" runat="server" TextMode="Password"></asp:TextBox>
            <asp:Label ID="Label4" CssClass="label-style" runat="server" Text="Repeat Password"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" CssClass="required" runat="server" ControlToValidate="repeatPasswordTb" ErrorMessage="*"></asp:RequiredFieldValidator>
            <asp:TextBox ID="repeatPasswordTb" CssClass="input-style" runat="server" TextMode="Password"></asp:TextBox>
            <div style="text-align:center">
                <asp:Label ID="Label5" CssClass="label-breaker-style" runat="server" Text="Vehicle Information"></asp:Label>
            </div>
            <asp:Label ID="Label6" CssClass="label-style" runat="server" Text="VIN"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" CssClass="required" runat="server" ControlToValidate="vinTb" ErrorMessage="*"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="vinTb" CssClass="required" ErrorMessage="Invalid VIN" ValidationExpression="[A-HJ-NPR-Z0-9]{13}[0-9]{4}"></asp:RegularExpressionValidator><asp:TextBox ID="vinTb" CssClass="input-style" runat="server"></asp:TextBox>
            <asp:Label ID="Label11" CssClass="label-style" runat="server" Text="License Plate Number"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" CssClass="required" runat="server" ControlToValidate="licensePlateTb" ErrorMessage="*"></asp:RequiredFieldValidator>
            <asp:TextBox ID="licensePlateTb" CssClass="input-style" runat="server"></asp:TextBox>
            <asp:Label ID="Label7" CssClass="label-style" runat="server" Text="Make"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" CssClass="required" runat="server" ControlToValidate="vehicleMakeTb" ErrorMessage="*"></asp:RequiredFieldValidator>
            <asp:TextBox ID="vehicleMakeTb" CssClass="input-style" runat="server"></asp:TextBox>
            <asp:Label ID="Label8" CssClass="label-style" runat="server" Text="Model"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" CssClass="required" runat="server" ControlToValidate="vehicleModelTb" ErrorMessage="*"></asp:RequiredFieldValidator>
            <asp:TextBox ID="vehicleModelTb" CssClass="input-style" runat="server"></asp:TextBox>
            <asp:Label ID="Label9" CssClass="label-style" runat="server" Text="Year"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" CssClass="required" runat="server" ControlToValidate="vehicleYearTb" ErrorMessage="*"></asp:RequiredFieldValidator>
            <asp:TextBox ID="vehicleYearTb" CssClass="input-style" runat="server"></asp:TextBox>
            <asp:Label ID="Label10" CssClass="label-style" runat="server" Text="Color"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" CssClass="required" runat="server" ControlToValidate="vehicleColorTb" ErrorMessage="*"></asp:RequiredFieldValidator>
            <asp:TextBox ID="vehicleColorTb" CssClass="input-style" runat="server"></asp:TextBox>
            <asp:Button ID="RegisterBtn" class="button-style" type="Submit" runat="server" Text="Register" OnClick="registerBtn_Click" />
            <asp:Button ID="cancelBtn" class="button-style" type="Submit" runat="server" Text="Cancel" OnClick="cancelBtn_Click" />
            <asp:Label ID="Label14" CssClass="error" runat="server" Text="Error, make sure all required fields are filled out and correct."></asp:Label>

        </div>
    </form>
</body>
</html>