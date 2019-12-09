<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReportViolation.aspx.cs" Inherits="RamPark.ReportViolation" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>  
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <link href="CSS/ReportViolation.css" rel="stylesheet"/>
    <style type="text/css">
        .auto-style1 {
            width: 125px;
        }
    </style>
    </head>
<body>
    <form id="form1" runat="server">
            <div style="text-align:center">
                <asp:Label ID="Label5" CssClass="label-devtools-style" runat="server" Text="Report Violation"></asp:Label>
            </div>
            
            <div style="text-align:center" style="padding-bottom:15px">
                <asp:Label ID="Label2" AssociatedControlID="Textbox1" runat="server" CssClass="label-style" Text="Spot Number: "></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </div>
            
            <div style="text-align:center" style="padding-bottom:15px">
                <asp:Label ID="Label3" AssociatedControlID="Textbox1" runat="server" CssClass="label-style" Text="Vehicle Make: "></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </div>
            
            <div style="text-align:center" style="padding-bottom:15px">
                <asp:Label ID="Label4" AssociatedControlID="Textbox1" runat="server" CssClass="label-style" Text="Vehicle Color: "></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </div>

            
            <div style="text-align:center" style="padding-bottom:5px">
                <asp:Label ID="Label1" runat="server" CssClass="label-style" Text="Description of violation: "></asp:Label>
            </div>
        
            <div  style="text-align:center" >
                <asp:TextBox ID="ViolationDescriptionTb" runat="server" Height="150px" TextMode=MultiLine Width="200"></asp:TextBox>
            </div>

    </form>
</body>
</html>