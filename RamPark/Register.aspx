<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="RamPark.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <link href="CSS/LoginStyle.css" rel="stylesheet"/>
    <script runat="server" >
         void Selection_Change(Object sender, EventArgs e)
        {
            DropDownList dropDownListMake = new DropDownList();
            // Set the background color for days in the Calendar control
            // based on the value selected by the user from the 
            // DropDownList control.
            string v = dropDownListMake.Text;
            if (v == "Buick")
            {
                List<string> bmodels = new List<string> { "Regal", "Encore", "Cascada" };
                dropDownListModel.DataSource = bmodels;
            }
            if (v == "Acura")
            {
                List<string> amodels = new List<string> { "ILX", "TLX", "RLX", "RDX", "MDX", "ZDX" };
                dropDownListModel.DataSource = amodels;
            }
        }
        </script>
    </head>
<body>
    <form id="form1" runat="server">
        <div class="login-style">
            <img src="Images/logo-login.png" class="image-style" />
            <div style="text-align:center">
                <asp:Label ID="Label12" CssClass="label-breaker-style" runat="server" Text="Personal Information"></asp:Label>
            </div>
            <asp:Label ID="emailLbl" CssClass="label-style" runat="server" Text="Email"></asp:Label>
            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="required" runat="server" ControlToValidate="emailTb" ErrorMessage="Invalid Email"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email" ControlToValidate="emailTb" CssClass="required" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <asp:TextBox ID="emailTb" CssClass="input-style" runat="server"></asp:TextBox>
            <asp:Label ID="Label2" CssClass="label-style" runat="server" Text="RAM ID"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="required" runat="server" ControlToValidate="ramIdTb" ErrorMessage="Invalid RamID"></asp:RequiredFieldValidator>
            <asp:TextBox ID="ramIdTb" CssClass="input-style" runat="server"></asp:TextBox>
            <asp:Label ID="Label1" CssClass="label-style" runat="server" Text="First Name"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="required" runat="server" ControlToValidate="fNameTb" ErrorMessage="Invalid FirstName"></asp:RequiredFieldValidator>
            <asp:TextBox ID="fNameTb" CssClass="input-style" runat="server"></asp:TextBox>
            <asp:Label ID="Label3" CssClass="label-style" runat="server" Text="Last Name"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="required" runat="server" ControlToValidate="lNameTb" ErrorMessage="Invalid LastName"></asp:RequiredFieldValidator>
            <asp:TextBox ID="lNameTb" CssClass="input-style" runat="server"></asp:TextBox>
            <asp:Label ID="Label13" CssClass="label-style" runat="server" Text="Phone Number"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" CssClass="required" runat="server" ControlToValidate="repeatPasswordTb" ErrorMessage="Invalid Phone"></asp:RequiredFieldValidator>
            <asp:TextBox ID="phoneTb" CssClass="input-style" runat="server" TextMode="Phone"></asp:TextBox>
            <asp:Label ID="Label155" CssClass="label-style" runat="server" Text="Password"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" CssClass="required" runat="server" ControlToValidate="passwordTb" ErrorMessage="Invalid Password"></asp:RequiredFieldValidator>
            <asp:TextBox ID="passwordTb" CssClass="input-style" runat="server" TextMode="Password"></asp:TextBox>
            <asp:Label ID="Label4" CssClass="label-style" runat="server" Text="Repeat Password"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" CssClass="required" runat="server" ControlToValidate="repeatPasswordTb" ErrorMessage="Passwords Do Not Match"></asp:RequiredFieldValidator>
            <asp:TextBox ID="repeatPasswordTb" CssClass="input-style" runat="server" TextMode="Password"></asp:TextBox>
            <div style="text-align:center">
                <asp:Label ID="Label5" CssClass="label-breaker-style" runat="server" Text="Vehicle Information"></asp:Label>
            </div>
            <asp:Label ID="Label6" CssClass="label-style" runat="server" Text="VIN"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" CssClass="required" runat="server" ControlToValidate="vinTb" ErrorMessage="Invalid VIN"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="vinTb" CssClass="required" ErrorMessage="Invalid VIN" ValidationExpression="[A-HJ-NPR-Z0-9]{13}[0-9]{4}"></asp:RegularExpressionValidator>
            <asp:TextBox ID="vinTb" CssClass="input-style" runat="server"></asp:TextBox>
            <asp:Label ID="Label11" CssClass="label-style" runat="server" Text="License Plate Number"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" CssClass="required" runat="server" ControlToValidate="licensePlateTb" ErrorMessage="Invalid License Plate"></asp:RequiredFieldValidator>
            <asp:TextBox ID="licensePlateTb" CssClass="input-style" runat="server"></asp:TextBox>
            <asp:Label ID="Label7" CssClass="label-style" runat="server" Text="Make"></asp:Label>
            <asp:DropDownList id="dropDownListMake"
                    OnSelectedIndexChanged ="Make_Selection_Change"
                    AutoPostBack="True"
                    runat="server">
                 <asp:ListItem Selected="True" Value="Acura"> Acura </asp:ListItem>
                  <asp:ListItem Value="Buick"> Buick </asp:ListItem>
                  <asp:ListItem Value="Ford"> Ford </asp:ListItem>
                  <asp:ListItem Value="Honda"> Honda </asp:ListItem>
                  <asp:ListItem Value="Hyundai"> Hyundai </asp:ListItem>
                  <asp:ListItem Value="Jeep"> Jeep </asp:ListItem>
                  <asp:ListItem Value="Nissan"> Nissan </asp:ListItem>
               </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" CssClass="required" runat="server" ControlToValidate="vehicleMakeTb" ErrorMessage="Invalid Make"></asp:RequiredFieldValidator>
            <asp:TextBox ID="vehicleMakeTb" CssClass="input-style" runat="server" ReadOnly="True"></asp:TextBox>
            <asp:Label ID="Label8" CssClass="label-style" runat="server" Text="Model"></asp:Label>
             <asp:DropDownList id="dropDownListModel"
                    AutoPostBack="True"
                    runat="server" OnSelectedIndexChanged="Model_Selection_Change">
                    
                  <asp:ListItem Selected="True" Value="RLX"> RLX </asp:ListItem>
                  <asp:ListItem Value="Enclave"> Enclave</asp:ListItem>
                  <asp:ListItem Value="Bronco"> Bronco </asp:ListItem>
                  <asp:ListItem Value="Civic"> Civic </asp:ListItem>
                  <asp:ListItem Value="Accent"> Accent </asp:ListItem>
                  <asp:ListItem Value="Wrangler"> Wrangler </asp:ListItem>
                  <asp:ListItem Value="350z"> 350z </asp:ListItem>
               </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" CssClass="required" runat="server" ControlToValidate="vehicleModelTb" ErrorMessage="Invalid Model"></asp:RequiredFieldValidator>
            <asp:TextBox ID="vehicleModelTb" CssClass="input-style" runat="server"></asp:TextBox>
            <asp:Label ID="Label9" CssClass="label-style" runat="server" Text="Year"></asp:Label>
             <asp:DropDownList id="dropDownListYear"
                    AutoPostBack="True"
                    runat="server" OnSelectedIndexChanged="Year_Selection_Change">

                  <asp:ListItem Selected="True" Value="2019"> 2019 </asp:ListItem>
                  <asp:ListItem Value="2018"> 2018 </asp:ListItem>
                  <asp:ListItem Value="2017"> 2017 </asp:ListItem>
                  <asp:ListItem Value="2016"> 2016 </asp:ListItem>
                  <asp:ListItem Value="2015"> 2015 </asp:ListItem>
                  <asp:ListItem Value="2014"> 2014 </asp:ListItem>
                  <asp:ListItem Value="2013"> 2013 </asp:ListItem>
                  <asp:ListItem Value="2012"> 2012 </asp:ListItem>
                  <asp:ListItem Value="2011"> 2011 </asp:ListItem>
                  <asp:ListItem Value="2010"> 2010 </asp:ListItem>
                  <asp:ListItem Value="2009"> 2009 </asp:ListItem>
                  <asp:ListItem Value="2008"> 2008 </asp:ListItem>
                  <asp:ListItem Value="2007"> 2007 </asp:ListItem>
                  <asp:ListItem Value="2006"> 2006 </asp:ListItem>
                  <asp:ListItem Value="2005"> 2005 </asp:ListItem>
                  <asp:ListItem Value="2004"> 2004 </asp:ListItem>
                  <asp:ListItem Value="2003"> 2003 </asp:ListItem>
                  <asp:ListItem Value="2002"> 2002 </asp:ListItem>
                  <asp:ListItem Value="2001"> 2001 </asp:ListItem>
                  <asp:ListItem Value="2000"> 2000 </asp:ListItem>
                  <asp:ListItem Value="1999"> 1999 </asp:ListItem>
                  <asp:ListItem Value="1998"> 1998 </asp:ListItem>
                  <asp:ListItem Value="1997"> 1997 </asp:ListItem>
                  <asp:ListItem Value="1996"> 1996 </asp:ListItem>
                  <asp:ListItem Value="1995"> 1995 </asp:ListItem>
               </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" CssClass="required" runat="server" ControlToValidate="vehicleYearTb" ErrorMessage="Invalid Year"></asp:RequiredFieldValidator>
            <asp:TextBox ID="vehicleYearTb" CssClass="input-style" runat="server" ReadOnly="True"></asp:TextBox>
            <asp:Label ID="Label10" CssClass="label-style" runat="server" Text="Color"></asp:Label>
            <asp:DropDownList id="dropDownListColor"
                    AutoPostBack="True"
                    runat="server" OnSelectedIndexChanged="Color_Selection_Change">

                  <asp:ListItem Selected="True" Value="Black"> Black </asp:ListItem>
                  <asp:ListItem Value="Blue"> Blue </asp:ListItem>
                  <asp:ListItem Value="DarkBlue"> Dark Blue </asp:ListItem>
                  <asp:ListItem Value="Green"> Green </asp:ListItem>
                  <asp:ListItem Value="Red"> Red </asp:ListItem>
                  <asp:ListItem Value="Silver"> Silver </asp:ListItem>
                  <asp:ListItem Value="White"> White </asp:ListItem>
                  <asp:ListItem Value="Yellow"> Yellow </asp:ListItem>
               </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" CssClass="required" runat="server" ControlToValidate="vehicleColorTb" ErrorMessage="Invalid Color"></asp:RequiredFieldValidator>
            <asp:TextBox ID="vehicleColorTb" CssClass="input-style" runat="server" ReadOnly="True"></asp:TextBox>
            <asp:Button ID="RegisterBtn" class="button-style" type="Submit" runat="server" Text="Register" OnClick="registerBtn_Click" />
            <asp:Button ID="cancelBtn" class="button-style" type="Submit" runat="server" Text="Cancel" OnClick="cancelBtn_Click" CausesValidation="False" />
            <asp:Label ID="ErrorLabel" CssClass="error" runat="server" Text="Error, make sure all required fields are filled out and correct." Visible="False"></asp:Label>
            <asp:Label ID="DatabaseErrorLabel" CssClass="error" runat="server" Text="Database error: Likely could not connect to the DB. Please try again." Visible="False"></asp:Label>

        </div>
    </form>
</body>
</html>